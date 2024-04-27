import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/presentation/login/onboarding_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: PendingContainer(
      //   builder: (BuildContext context, Set<String> pending) {
      // if (pending.contains(Login.pendingKey)) {
      //   return const Center(child: CircularProgressIndicator());
      // }
      // return const OnboardingScreen();
      // },),
        body: OnboardingScreen(),
        );
  }
}
