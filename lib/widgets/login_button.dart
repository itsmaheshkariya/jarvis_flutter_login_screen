import 'package:flutter/material.dart';

class JarvisLoginButton extends StatelessWidget {
  final String name;
  final Color color;
  const JarvisLoginButton({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(18.0),
          ),
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: color,
              spreadRadius: 4,
              blurRadius: 10,
            ),
            BoxShadow(
              color: color,
              spreadRadius: -4,
              blurRadius: 5,
            )
          ]),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            "Login",
            style: TextStyle(color: color, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
