import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  void _submitForm(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    // Dispatch sign-up action
    StoreProvider.of<AppState>(context).dispatch(
      CreateUser(
        email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text,
        onResult: _onResult,
      ),
    );
  }

  void _onResult(AppAction action) {
    // Handle sign-up result action
    if (action is ErrorAction) {
      final Object error = action.error;

      // Handle specific error cases
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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Crează un cont',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.text,
                decoration:
                    const InputDecoration(labelText: 'Nume utilizator', hintText: 'Introdu numele de utilizator'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Te rog introdu numele de utilizator';
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
                decoration: const InputDecoration(labelText: 'Email', hintText: 'Introdu adresa de email'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Introdu adresa de email';
                  } else if (!value.contains('@')) {
                    return 'Te rog introdu o adresă de email validă';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Parola', hintText: 'Introdu parola'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Te rog introdu parola';
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
                child: const Text('Înapoi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
