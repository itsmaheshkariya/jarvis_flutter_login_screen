import 'package:flutter/material.dart';

class JarvisInput extends StatelessWidget {
  String name;
  Color color;
  bool isPassword;
  JarvisInput(
      {Key? key,
      required this.name,
      required this.color,
      required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: isPassword,
        style: TextStyle(
            letterSpacing: 2,
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        decoration: InputDecoration(
          fillColor: color,
          border: InputBorder.none,
          hintText: name,
          hintStyle: TextStyle(
            color: color,
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
