import 'package:flutter/material.dart';

class CustomTextButtonNav extends StatelessWidget {
  const CustomTextButtonNav(
      {super.key,
      required this.onPressed,
      required this.name,
      required this.subject});

  final void Function() onPressed;
  final String name;
  final String subject;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$subject have an account?',
          style: const TextStyle(
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
