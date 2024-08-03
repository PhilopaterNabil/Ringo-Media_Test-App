import 'package:flutter/material.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomLoginScreenBody(),
    );
  }
}
