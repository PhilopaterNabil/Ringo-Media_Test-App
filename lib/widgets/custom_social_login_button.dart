import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSocialLogInButton extends StatelessWidget {
  const CustomSocialLogInButton(
      {super.key, required this.onPressed, required this.name});

  final void Function() onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: Color(0xffE8EAEE),
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      minWidth: double.infinity,
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/$name.svg',
            width: 24,
          ),
          const Spacer(),
          Text(
            "Continue with $name",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff191D2B),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}