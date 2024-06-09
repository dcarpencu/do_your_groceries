import 'dart:ui';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/login/animated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with SingleTickerProviderStateMixin {
  bool isSignInDialogShown = false;
  AnimationController? _controller;
  Animation<double>? animationFade;
  Animation<double>? _animationSize;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final FocusNode _passwordNode = FocusNode();

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }
    StoreProvider.of<AppState>(context)
        .dispatch(Login.start(email: _email.text, password: _password.text, onResult: _onResult));
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
      context.go('/homePage');
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    animationFade = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeInOutQuint,
      ),
    );

    _animationSize = Tween<double>(
      begin: 0,
      end: 500,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.decelerate,
      ),
    );

    _controller?.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    _email.dispose();
    _password.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      resizeToAvoidBottomInset: true,
      body: Form(
        child: PendingContainer(
          builder: (BuildContext context, Set<String> pending) {
            if ((pending.contains(GetCurrentUser.pendingKey)) || (pending.contains(Login.pendingKey))) {
              return Center(
                  child: LoadingAnimationWidget.staggeredDotsWave(
                    color: Colors.white,
                    size: 200,
                  ),);
            }
            return SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Stack(
                  children: <Widget>[
                    FadeTransition(opacity: animationFade!, child: Image.asset('assets/Backgrounds/grocery-bag.png')),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(height: 72),
                          const SizedBox(
                            width: 260,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Do',
                                  style: TextStyle(
                                    fontSize: 56,
                                    fontFamily: 'Poppins',
                                    height: 1.2,
                                  ),
                                ),
                                Text(
                                  'Your',
                                  style: TextStyle(
                                    fontSize: 56,
                                    fontFamily: 'Poppins',
                                    height: 1.2,
                                  ),
                                ),
                                Text(
                                  'Groceries',
                                  style: TextStyle(
                                    fontSize: 56,
                                    fontFamily: 'Poppins',
                                    height: 1.2,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Hai să facem cumpărăturile",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 72),
                          Column(
                            children: <Widget>[
                              AnimatedBuilder(
                                animation: _animationSize!,
                                builder: (BuildContext context, Widget? widget) {
                                  return Container(
                                    width: _animationSize?.value,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: const <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 80,
                                          spreadRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: const EdgeInsets.only(left: 8, right: 8),
                                          child: TextFormField(
                                            controller: _email,
                                            keyboardType: TextInputType.emailAddress,
                                            textInputAction: TextInputAction.next,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              labelText: 'Email',
                                              hintText: 'Introdu adresa de email',
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                              ),
                                            ),
                                            validator: (String? value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Te rog introdu un email';
                                              } else if (!value.contains('@')) {
                                                return 'Te rog introdu un email valid';
                                              }
                                              return null;
                                            },
                                            onFieldSubmitted: (String value) {
                                              FocusScope.of(context).requestFocus(_passwordNode);
                                            },
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Container(
                                          padding: const EdgeInsets.only(left: 8, right: 8),
                                          child: TextFormField(
                                            controller: _password,
                                            focusNode: _passwordNode,
                                            textInputAction: TextInputAction.done,
                                            obscureText: true,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              labelText: 'Parola',
                                              hintText: 'Introdu parola',
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                              ),
                                            ),
                                            validator: (String? value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Please provide a valid password';
                                              } else if (value.length < 6) {
                                                return 'Please provide a password longer than 6 characters';
                                              }
                                              return null;
                                            },
                                            onFieldSubmitted: (String value) {
                                              _onNext(context);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 20),
                              AnimatedButton(
                                controller: _controller!,
                                onPress: () {
                                  _onNext(context);
                                },
                              ),
                              const SizedBox(height: 10),
                              FadeTransition(
                                opacity: animationFade!,
                                child: TextButton(
                                  child: const Text(
                                    'Creează cont',
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                  onPressed: () {context.pushNamed('signUp');},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              'Începe să folosești cea mai inteligentă listă de cumpărături ',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
