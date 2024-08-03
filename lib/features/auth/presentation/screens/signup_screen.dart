import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_auth_app_bar.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_auth_submit_button.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_auth_text_field.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_password_reset_prompt.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_quick_login.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_secondary_login_text.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_text_button_nav.dart';
import 'package:ringo_media/features/auth/presentation/widgets/custom_text_title.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // body: CustomLoginScreenBody(),
        body: Column(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAuthAppBar(
                        title: 'Sign Up',
                        subTitle: 'Sign up to your account',
                      ),
                      const SizedBox(height: 40),
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
                          onPressed: () {},
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
                      CustomTextButtonNav(
                        onPressed: () => Get.back(),
                        name: 'Login',
                        subject: 'Already',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
