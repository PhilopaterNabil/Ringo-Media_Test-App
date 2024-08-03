import 'package:flutter/material.dart';

class CustomAuthSubmitButton extends StatelessWidget {
  const CustomAuthSubmitButton({super.key, required this.titleButton});

  final String titleButton;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: const Color(0xff191D2B),
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      minWidth: double.infinity,
      height: 56,
      onPressed: () {},
      child: Text(
        titleButton,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
