import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _emailNode = FocusNode();

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    StoreProvider.of<AppState>(context).dispatch(
      CreateUser(email: _email.text, password: _password.text, username: _username.text, onResult: _onResult),
    );
  }

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;

      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? '')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$error')));
      }
    } else if (action is CreateUserSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Form(
      child: Builder(builder: (BuildContext context) {
        return SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    controller: _username,
                    keyboardType: TextInputType.text,
                    autofocus: true,
                    decoration: const InputDecoration(hintText: 'username'),
                    textInputAction: TextInputAction.next,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'please provide an username';
                      }
                      return null;
                    },
                    onFieldSubmitted: (String value) {
                      FocusScope.of(context).requestFocus(_emailNode);
                    },
                  ),
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
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
                  TextButton(onPressed: () => _onNext(context), child: const Text('Sign up')),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Login', style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
        );
      },),
    ),);
  }
}
