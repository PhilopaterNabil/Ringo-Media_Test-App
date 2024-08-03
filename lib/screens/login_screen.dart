import 'package:flutter/material.dart';
import 'package:ringo_media/widgets/custom_login_screen_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomLoginScreenBody(
        obscureText: _obscureText,
        onPressedVisibilityPassword: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
    );
  }
}
