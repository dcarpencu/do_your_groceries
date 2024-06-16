import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundWave extends StatelessWidget {
  const BackgroundWave(
      {required this.pageName, required this.icon, this.backButtonOption = true, super.key, this.height = 280, this.isSvg = true,});

  final String pageName;
  final String icon;
  final bool backButtonOption;
  final bool isSvg;
  final double height;

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
        if (backButtonOption)
          const Positioned(
            top: 48,
            left: 8,
            child: BackButton(color: Colors.white),
          ),
        Positioned(
          top: 100,
          left: 20,
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
        if(isSvg)
        Positioned(
          top: 88,
          left: 256,
          child: SizedBox(
            height: 124,
            child: SvgPicture.asset(icon,
            width: 100,
            height: 100,),
          ),
        ),
        if(!isSvg)
          Positioned(
            top: 88,
            left: 256,
            child: SizedBox(
              height: 124,
              child: Image.asset(icon),
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
