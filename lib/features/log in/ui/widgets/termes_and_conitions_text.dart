import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/text_style.dart';

class TermesAndConitionsText extends StatelessWidget {
  const TermesAndConitionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'By logging, You agreeto our',
          style: TextStyles.font13grayreguler),
      TextSpan(
          text: ' Term & condition', style: TextStyles.font13DarkBlueMedium),
      TextSpan(
          text: ' and',
          style: TextStyles.font13grayreguler.copyWith(height: 1.5)),
      TextSpan(text: ' Privacy policy', style: TextStyles.font13DarkBlueMedium),
    ]));
  }
}
