import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final FocusNode _passwordNode = FocusNode();

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }
    StoreProvider.of<AppState>(context)
        .dispatch(Login(email: _email.text, password: _password.text, onResult: _onResult));
  }

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;

      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? '')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$error')));
      }
    } else if (action is LoginSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(child: Builder(builder: (BuildContext context) {
        return SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('lib/src/assets/michi.png',
                  width: 200,
                  height: 200,),
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    decoration: const InputDecoration(hintText: 'email'),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'please provide an email';
                      } else if (!value.contains('@')) {
                        return 'please enter a valid email';
                      }
                      return null;
                    },
                    onFieldSubmitted: (String value) {
                      FocusScope.of(context).requestFocus(_passwordNode);
                    },
                  ),
                  TextFormField(
                    controller: _password,
                    focusNode: _passwordNode,
                    decoration: const InputDecoration(hintText: 'password'),
                    textInputAction: TextInputAction.done,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'please provide a valid password';
                      } else if (value.length < 6) {
                        return 'Please provide a password longer than 6 characters';
                      }
                      return null;
                    },
                    onFieldSubmitted: (String value) {
                      _onNext(context);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(onPressed: () => _onNext(context), child: const Text('Login')),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child: const Text('Sign up', style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
        );
      },),),
    );
  }
}
