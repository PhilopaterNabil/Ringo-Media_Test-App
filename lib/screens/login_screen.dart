import 'package:flutter/material.dart';
import 'package:ringo_media/widgets/custom_auth_submit_button.dart';
import 'package:ringo_media/widgets/custom_password_reset_prompt.dart';
import 'package:ringo_media/widgets/custom_quick_login.dart';
import 'package:ringo_media/widgets/custom_register_prompt.dart';
import 'package:ringo_media/widgets/custom_secondary_login_text.dart';

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

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xff96A0B5),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xff191D2B),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

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
