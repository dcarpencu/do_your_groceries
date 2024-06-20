import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  void _submitForm(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    StoreProvider.of<AppState>(context).dispatch(
      CreateUserStart(
        email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text,
        onResult: _onResult,
      ),
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
      context.go('/homePage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: PendingContainer(
              builder: (BuildContext context, Set<String> pending) {
                if (pending.contains(CreateUser.pendingKey)) {
                  return Center(
                    child: LoadingAnimationWidget.staggeredDotsWave(
                      color: Colors.white,
                      size: 100,
                    ),
                  );
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 240,
                      child: Stack(
                        children: <Widget>[
                          Image.asset('assets/Backgrounds/grocery-bag.png', fit: BoxFit.cover),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'DoYourGroceries',
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 48),
                    Text(
                      'Crează un cont',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Nume utilizator',
                        hintText: 'Introduceți numele de utilizator',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white), // Change the underline color here
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white), // Change the underline color here
                        ),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Introduceți vă rog numele de utilizator';
                        } else if (value.length < 3) {
                          return 'Numele de utilizator trebuie să conțină cel puțin 3 caractere';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(labelStyle: TextStyle(color: Colors.white),labelText: 'Email', hintText: 'Introduceți adresa de email', enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Change the underline color here
                      ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white), // Change the underline color here
                        ),),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Introduceți vă rog adresa de email';
                        } else if (!value.contains('@')) {
                          return 'Introduceți vă rog o adresă de email validă';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(labelStyle: TextStyle(color: Colors.white),labelText: 'Parola', hintText: 'Introduceți parola', enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Change the underline color here
                      ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white), // Change the underline color here
                        ),),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Introduceți vă rog o parolă';
                        } else if (value.length < 6) {
                          return 'Parola trebuie să conțină cel puțin 6 caractere';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () => _submitForm(context),
                      child: const Text(
                        'Înregistrare',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text('Înapoi', style: TextStyle(color: Colors.white),),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
