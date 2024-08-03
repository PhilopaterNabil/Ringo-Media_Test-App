import 'package:flutter/material.dart';

class CustomRegisterPrompt extends StatelessWidget {
  const CustomRegisterPrompt(
      {super.key, required this.onPressed, required this.name});

  final void Function() onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(
            color: Color(0xff96A0B5),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            name,
            style: const TextStyle(
              color: Color(0xff191D2B),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}