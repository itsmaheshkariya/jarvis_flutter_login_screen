import 'package:flutter/material.dart';
import 'package:flutter_canvas/constants.dart';

class ArcReactor extends CustomPainter {
  double rotatingPosition;
  ArcReactor({required this.rotatingPosition});
  @override
  void paint(Canvas canvas, Size size) {
    Path path1 = Path();
    canvas.rotate(9.3);
    path1.moveTo(0, 300);
    path1.lineTo(300, 10);
    path1.lineTo(300, 30);
    canvas.drawShadow(path1, aqua, 50, true);
    canvas.drawPath(path1, paint7);

    canvas.rotate(rotatingPosition);
    canvas.drawShadow(
        Path()
          ..addOval(Rect.fromCircle(center: const Offset(0, 0), radius: 130)),
        const Color.fromARGB(255, 0, 140, 255),
        0,
        true);
    canvas.drawCircle(Offset.zero, 120.0, paint2);
    canvas.drawCircle(Offset.zero, 100.0, paint1);
    canvas.drawCircle(Offset.zero, 80.0, paint3);
    canvas.drawCircle(Offset.zero, 40.0, paint1);
    canvas.drawCircle(Offset.zero, 30.0, paint5);

    for (int i = 0; i < 8; i++) {
      canvas.rotate(0.8);
      canvas.drawLine(const Offset(0, 100), const Offset(0, 120), paint4);
    }

    canvas.rotate(-rotatingPosition * 2);

    for (var i = 0; i < 10; i++) {
      canvas.rotate(0.1);
      canvas.drawLine(const Offset(0, 30), const Offset(0, 40), paint6);
    }
    canvas.rotate(1.2);

    for (int i = 0; i < 10; i++) {
      canvas.rotate(0.1);
      canvas.drawLine(const Offset(0, 30), const Offset(0, 40), paint6);
    }

    canvas.rotate(1.1);
    for (int i = 0; i < 10; i++) {
      canvas.rotate(0.1);
      canvas.drawLine(const Offset(0, 30), const Offset(0, 40), paint6);
    }
    // For background electric effect
    Path path2 = Path();
    canvas.rotate(9.3);
    path2.moveTo(10, 10);
    path2.quadraticBezierTo(10, 0, 10, 20);
    path2.lineTo(10, 20);
    path2.lineTo(10, 30);
    canvas.drawShadow(path2, aqua, 100, true);
    canvas.drawShadow(path2, aqua, 200, true);
    canvas.drawShadow(path2, aqua, 300, true);
    canvas.drawPath(path2, paint6);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
