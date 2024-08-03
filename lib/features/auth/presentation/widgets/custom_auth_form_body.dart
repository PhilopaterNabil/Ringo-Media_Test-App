import 'package:flutter/material.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_auth_submit_button.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_auth_text_field.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_password_reset_prompt.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_quick_login.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_register_prompt.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_secondary_login_text.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_text_title.dart';

class CustomAuthFormBody extends StatelessWidget {
  const CustomAuthFormBody({
    super.key,
    required this.obscureText,
    required this.onPressedVisibilityPassword,
  });

  final bool obscureText;
  final void Function() onPressedVisibilityPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextTitle(title: 'Username / Email'),
          const CustomAuthTextField(
            hintText: 'Enter Username or Email here',
          ),
          const SizedBox(height: 24),
          const CustomTextTitle(title: 'Password'),
          CustomAuthTextField(
            hintText: 'Enter Password here',
            obscureText: obscureText,
            suffixIcon: IconButton(
              onPressed: onPressedVisibilityPassword,
              icon: Icon(obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined),
            ),
          ),
          const CustomPasswordResetPrompt(),
          const CustomAuthSubmitButton(),
          const SizedBox(height: 24),
          const CustomSecondaryLoginText(),
          const SizedBox(height: 24),
          CustomQuickLogIn(
            onPressedGoogle: () {},
            onPressedFacebook: () {},
            onPressedApple: () {},
          ),
          const SizedBox(height: 40),
          CustomRegisterPrompt(
            onPressed: () {},
            name: 'Register Here',
          )
        ],
      ),
    );
  }
}
