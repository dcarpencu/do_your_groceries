import 'package:flutter/material.dart';

class BackgroundWave extends StatelessWidget {
  const BackgroundWave({required this.height, super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipPath(
          clipper: BackgroundWaveClipper(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: <Color>[Colors.lightBlueAccent, Colors.lightBlue],
            )),
          )),
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

    path..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)

    ..lineTo(size.width, 0)
    ..close();

    return path;
  }

  @override
  bool shouldReclip(BackgroundWaveClipper oldClipper) => oldClipper != this;
}
