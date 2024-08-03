import 'package:flutter/material.dart';

class CustomPasswordResetPrompt extends StatelessWidget {
  const CustomPasswordResetPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 239, top: 24, bottom: 24),
      child: InkWell(
        onTap: () {},
        child: const Text(
          'Forgot Password ?',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff191D2B),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}