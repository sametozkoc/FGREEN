import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgressWidget extends CustomPainter {
  final strokeCircle = 20.0;
  double? currentProgress;
  CircleProgressWidget();
  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = strokeCircle
      ..color = Colors.black
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = 100;
    canvas.drawCircle(center, radius, circle);
    Paint animationArc = Paint()
      ..strokeWidth = strokeCircle
      ..color = const Color(0xFF006400)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double angle = 2 * pi * (45 / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        angle, false, animationArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
