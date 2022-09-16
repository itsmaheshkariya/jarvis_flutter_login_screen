import 'package:flutter/material.dart';
import 'package:flutter_canvas/widgets/arc_reactor.dart';
import 'package:flutter_canvas/widgets/input_field.dart';
import 'package:flutter_canvas/widgets/login_button.dart';
import 'dart:async';
import 'constants.dart';

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
          const SizedBox(
            height: 150,
          ),
          Center(
            child: CustomPaint(
              painter: ArcReactor(rotatingPosition: rotatingPosition),
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          JarvisInput(
            name: "Username",
            color: aqua,
            isPassword: false,
          ),
          const SizedBox(
            height: 50,
          ),
          JarvisInput(
            name: "Password",
            color: aqua,
            isPassword: true,
          ),
          const SizedBox(
            height: 100,
          ),
          JarvisLoginButton(
            name: "Login",
            color: aqua,
          ),
        ],
      ),
    );
  }
}
