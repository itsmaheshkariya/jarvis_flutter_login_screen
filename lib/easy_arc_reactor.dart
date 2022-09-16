import 'package:flutter/material.dart';
import 'dart:async';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rotatingPosition = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        rotatingPosition = rotatingPosition + 0.008;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Container(
                alignment: Alignment.center,
                child: CustomPaint(
                  painter: MyCanvas(rotatingPosition: rotatingPosition),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 0, 255, 255), width: 4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              style: TextStyle(
                  letterSpacing: 2,
                  color: Color.fromARGB(255, 0, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 0, 255, 255),
                border: InputBorder.none,
                hintText: 'Username',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 255, 255),
                ),
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 0, 255, 255), width: 4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              style: TextStyle(
                  letterSpacing: 2,
                  color: Color.fromARGB(255, 0, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 0, 255, 255),
                border: InputBorder.none,
                hintText: 'Secret',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 255, 255),
                ),
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
                color: Color.fromARGB(255, 12, 13, 13),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 9, 237, 233),
                    spreadRadius: 4,
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Color.fromARGB(255, 6, 230, 242),
                    spreadRadius: -4,
                    blurRadius: 5,
                  )
                ]),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(0, 0, 255, 234)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 239, 243), fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCanvas extends CustomPainter {
  double rotatingPosition;
  MyCanvas({required this.rotatingPosition});
  @override
  void paint(Canvas canvas, Size size) {
    var paint9 = Paint()
      ..color = const Color.fromARGB(255, 0, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

    Path path3 = Path();
    canvas.rotate(9.3);
    path3.moveTo(0, 300);
    path3.lineTo(300, 10);
    path3.lineTo(300, 30);
    canvas.drawShadow(path3, const Color.fromARGB(255, 0, 255, 255), 50, true);
    canvas.drawPath(path3, paint9);

    var paint1 = Paint()
      ..color = const Color.fromARGB(255, 0, 200, 250)
      ..style = PaintingStyle.fill;

    var paint2 = Paint()
      ..color = const Color.fromARGB(255, 0, 234, 255)
      ..style = PaintingStyle.fill;

    var paint3 = Paint()
      ..color = const Color.fromARGB(255, 0, 73, 81)
      ..style = PaintingStyle.fill;

    var paint4 = Paint()
      ..color = const Color.fromARGB(255, 1, 125, 136)
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    var paint5 = Paint()
      ..color = const Color.fromARGB(255, 1, 125, 136)
      ..style = PaintingStyle.fill;

    var paint6 = Paint()
      ..color = const Color.fromARGB(255, 10, 10, 10)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

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
    Path path1 = Path();
    canvas.rotate(9.3);
    path1.moveTo(10, 10);
    path1.quadraticBezierTo(10, 0, 10, 20);
    path1.lineTo(10, 20);
    path1.lineTo(10, 30);
    canvas.drawShadow(path1, const Color.fromARGB(255, 0, 255, 255), 100, true);
    canvas.drawShadow(path1, const Color.fromARGB(255, 0, 255, 255), 200, true);
    canvas.drawShadow(path1, const Color.fromARGB(255, 0, 255, 255), 300, true);

    canvas.drawPath(path1, paint6);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
