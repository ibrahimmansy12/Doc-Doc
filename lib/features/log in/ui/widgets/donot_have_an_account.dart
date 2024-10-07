import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/routing/routs.dart';
import 'package:flutter_advance/core/theming/text_style.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "Don`t have an account",
              style: TextStyles.font13DarkBlueRegular),
          TextSpan(
              text: "Sign Up",
              style: TextStyles.font13BlueSemyBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(ERouts.signupScreen);
                })
        ]));
  }
}
