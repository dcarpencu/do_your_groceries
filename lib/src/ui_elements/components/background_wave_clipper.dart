import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundWave extends StatelessWidget {
  const BackgroundWave(
      {required this.pageName, super.key, this.height = 280, this.iconWidget, this.isHome = false,});

  final String pageName;
  final double height;
  final Widget? iconWidget;
  final bool isHome;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: height,
          child: ClipPath(
            clipper: BackgroundWaveClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Colors.lightBlueAccent, Colors.lightBlue],
                ),
              ),
            ),
          ),
        ),
        if (!isHome)
          const Positioned(
            top: 48,
            left: 8,
            child: BackButton(color: Colors.white),
          ),
        Positioned(
          top: 104,
          left: 24,
          child: Text(
            pageName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Poppins',
              height: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
          Positioned(
            top: 105,
            left: isHome ? 232 : 256,
            child: SizedBox(
              height: isHome? 156 : 100,
              child: iconWidget,
            ),
          ),
      ],
    );
  }
}

class BackgroundWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    const double minSize = 140;

    final int p1Diff = ((minSize - size.height) * 0.5).truncate().abs();
    path.lineTo(0, size.height - p1Diff);

    final Offset controlPoint = Offset(size.width * 0.4, size.height);
    final Offset endPoint = Offset(size.width, minSize);

    path
      ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(BackgroundWaveClipper oldClipper) => oldClipper != this;
}
