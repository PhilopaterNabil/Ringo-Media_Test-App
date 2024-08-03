import 'package:flutter/material.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    super.key,
    this.obscureText,
    this.suffixIcon,
    required this.hintText,
  });

  final bool? obscureText;
  final Widget? suffixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon ?? const SizedBox(),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff96A0B5),
          fontSize: 16,
        ),
      ),
    );
  }
}