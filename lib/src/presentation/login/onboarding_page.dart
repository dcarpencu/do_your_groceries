import 'dart:ui';

import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/ui_elements/components/animated_btn.dart';
import 'package:do_you_groceries/src/ui_elements/components/custom_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool isSignInDialogShown = false;
  // ignore: always_specify_types
  late RiveAnimationController<dynamic> _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation('active', autoplay: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          if (pending.contains(GetCurrentUser.pendingKey)) {
            return const LinearProgressIndicator();
          }
          return Stack(
            children: <Widget>[
              Positioned(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                bottom: 0,
                left: 0,
                child: Image.asset('assets/Backgrounds/deadpool.png'),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
                ),
              ),
              const RiveAnimation.asset('assets/RiveAssets/shapes.riv'),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: const SizedBox(),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 240),
                top: isSignInDialogShown ? -50 : 0,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Spacer(),
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
                                "Let's get you started",
                              ),
                            ],
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        AnimatedBtn(
                          btnAnimationController: _btnAnimationController,
                          press: () {
                            _btnAnimationController.isActive = true;
                            Future<void>.delayed(const Duration(milliseconds: 800), () {
                              setState(() {
                                isSignInDialogShown = true;
                              });
                              customSigninDialog(
                                context,
                                onClosed: (_) {
                                  setState(() {
                                    isSignInDialogShown = false;
                                  });
                                },
                              );
                            });
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Text(
                            'Start using the smartest grocery list there is ',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
