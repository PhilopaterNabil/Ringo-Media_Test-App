import 'package:flutter/material.dart';

class CustomSecondaryLoginText extends StatelessWidget {
  const CustomSecondaryLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Or login with account',
        style: TextStyle(
          color: Color(0xff96A0B5),
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}