import 'dart:ui';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/login/animated_button.dart';
import 'package:do_you_groceries/src/presentation/login/sign_up_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:redux/redux.dart';

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

  late Store<AppState> _store;

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }
    _store.dispatch(Login.start(email: _email.text, password: _password.text, onResult: _onResult));
  }

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid credentials!')));
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
    _store = StoreProvider.of<AppState>(context, listen: false);
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
                  size: 100,
                ),
              );
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
                                  'Haide să facem cumpărăturile smart',
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
                                              hintText: 'Introduceți adresa de email',
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                              ),
                                            ),
                                            validator: (String? value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Introduceți adresa email';
                                              } else if (!value.contains('@')) {
                                                return 'Introduceți vă rog un email valid';
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
                                              hintText: 'Introduceți parola',
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                              ),
                                            ),
                                            validator: (String? value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Introduceți vă rog o parolă validă';
                                              } else if (value.length < 6) {
                                                return 'Introduceți vă rog o parolă mai lungă de 6 caractere';
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
                                  onPressed: () {
                                    Navigator.of(context).push(createRoute(const SignupPage()));
                                  },
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
