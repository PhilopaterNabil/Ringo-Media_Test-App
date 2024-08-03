import 'package:flutter/material.dart';
import 'package:ringo_media/widgets/custom_social_login_button.dart';

class CustomQuickLogIn extends StatelessWidget {
  const CustomQuickLogIn({
    super.key,
    required this.onPressedGoogle,
    required this.onPressedFacebook,
    required this.onPressedApple,
  });

  final void Function() onPressedGoogle;
  final void Function() onPressedFacebook;
  final void Function() onPressedApple;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSocialLogInButton(
          onPressed: onPressedGoogle,
          name: 'Google',
        ),
        const SizedBox(height: 16),
        CustomSocialLogInButton(
          onPressed: onPressedFacebook,
          name: 'Facebook',
        ),
        const SizedBox(height: 16),
        CustomSocialLogInButton(
          onPressed: onPressedApple,
          name: 'Apple',
        )
      ],
    );
  }
}
