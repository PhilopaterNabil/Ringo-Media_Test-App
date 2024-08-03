import 'package:flutter/material.dart';
import 'package:ringo_media/widgets/custom_auth_app_bar.dart';
import 'package:ringo_media/widgets/custom_auth_form_body.dart';

class CustomLoginScreenBody extends StatefulWidget {
  const CustomLoginScreenBody({
    super.key,
  });

  @override
  State<CustomLoginScreenBody> createState() => _CustomLoginScreenBodyState();
}

class _CustomLoginScreenBodyState extends State<CustomLoginScreenBody> {
  bool _obscureText = true;
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
                obscureText: _obscureText,
                onPressedVisibilityPassword: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
