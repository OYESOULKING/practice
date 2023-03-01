import 'dart:math';

import 'package:flutter/material.dart';

class MyCustomClipperNo1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path();
    path.moveTo(0, height * 0.1);
    path.cubicTo(
        width * 0.25, height * 0.5, width * 0.5, -50, width, height * 0.25);
    path.lineTo(width, height);
    path.lineTo(0, height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

class MyCustomClipperNo2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    double oldWidth = 1;
    for (var i = 0; i < 50; i++) {
      path.quadraticBezierTo(
          width * oldWidth, height * 0.85, width * (oldWidth - 0.014), height);
      oldWidth -= 0.025;
    }
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class MyCustomClipperNo3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path();
    path.lineTo(0, 0);
    path.addArc(
        Rect.fromCircle(center: Offset(width * 0.1, height * 0.35), radius: 50),
        190 * pi / 180,
        60 * pi / 180);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
