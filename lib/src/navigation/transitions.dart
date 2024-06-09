import 'package:flutter/material.dart';

Route<dynamic> createRoute(Widget destination) {
  return PageRouteBuilder<dynamic>(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => destination,
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      const Offset begin = Offset(0, 1);
      const Offset end = Offset.zero;
      const Cubic curve = Curves.ease;

      final Animatable<Offset> tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
