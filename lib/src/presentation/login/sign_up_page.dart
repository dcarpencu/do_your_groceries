import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/sign_in_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rive/rive.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

  bool isShowLoading = false;
  bool isShowConfetti = false;

  late SMITrigger check;
  late SMITrigger error;
  late SMITrigger reset;

  late SMITrigger confetti;

  StateMachineController getRiveController(Artboard artboard) {
    final StateMachineController? controller = StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    return controller;
  }

  void signIn(BuildContext context) {
    setState(() {
      isShowLoading = true;
      isShowConfetti = true;
    });
    Future.delayed(const Duration(seconds: 1), () {
      if (_formKey.currentState!.validate()) {
        // show success
        check.fire();
        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            isShowLoading = false;
          });
          confetti.fire();
        });
      } else {
        error.fire();
        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            isShowLoading = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Form(
          key: _formKey,
          child: Builder(
            builder: (BuildContext context) {
              return SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          'Username',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 16),
                          child: TextFormField(
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
                        ),
                        const Text(
                          'Email',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 16),
                          child: TextFormField(
                            controller: _email,
                            focusNode: _emailNode,
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
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                          child: TextFormField(
                            controller: _password,
                            focusNode: _passwordNode,
                            keyboardType: TextInputType.visiblePassword,
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
                              FocusManager.instance.primaryFocus?.unfocus();
                              _onNext(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 24),
                          child: ElevatedButton.icon(
                              onPressed: () {
                                final FocusScopeNode currentFocus = FocusScope.of(context);

                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                                signIn(context);
                                _onNext(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFF77D8E),
                                  minimumSize: const Size(double.infinity, 56),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                          bottomLeft: Radius.circular(25)))),
                              icon: const Icon(
                                CupertinoIcons.arrow_right,
                                color: Color(0xFFFE0037),
                              ),
                              label: const Text("Sign Up")),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        if (isShowLoading)
          CustomPositioned(
              child: RiveAnimation.asset(
            "assets/RiveAssets/check.riv",
            onInit: (Artboard artboard) {
              final StateMachineController controller = getRiveController(artboard);
              check = controller.findSMI("Check") as SMITrigger;
              error = controller.findSMI("Error") as SMITrigger;
              reset = controller.findSMI("Reset") as SMITrigger;
            },
          ))
        else
          const SizedBox(),
        if (isShowConfetti)
          CustomPositioned(
              child: Transform.scale(
            scale: 6,
            child: RiveAnimation.asset(
              "assets/RiveAssets/confetti.riv",
              onInit: (artboard) {
                final StateMachineController controller = getRiveController(artboard);
                confetti = controller.findSMI("Trigger explosion") as SMITrigger;
              },
            ),
          ))
        else
          const SizedBox()
      ]),
    );
  }
}
