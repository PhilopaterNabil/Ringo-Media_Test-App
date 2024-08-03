import 'package:flutter/material.dart';
import 'package:ringo_media/widgets/custom_auth_app_bar.dart';
import 'package:ringo_media/widgets/custom_auth_form_body.dart';

class CustomLoginScreenBody extends StatelessWidget {
  const CustomLoginScreenBody({
    super.key,
    required this.obscureText,
    required this.onPressedVisibilityPassword,
  });

  final bool obscureText;
  final void Function() onPressedVisibilityPassword;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAuthAppBar(
                title: 'Login',
                subTitle: 'Sign in to your account',
              ),
              const SizedBox(height: 40),
              CustomAuthFormBody(
                obscureText: obscureText,
                onPressedVisibilityPassword: onPressedVisibilityPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
