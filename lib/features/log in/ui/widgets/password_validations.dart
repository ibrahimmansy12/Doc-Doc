import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpetialCharactars;
  final bool hasNumber;
  final bool hasMinimalLength;
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpetialCharactars,
      required this.hasNumber,
      required this.hasMinimalLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At Least Has One Lowercase Letter", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At Least Has One Uppercase Letter", hasUpperCase),
        verticalSpace(2),
        buildValidationRow("At Least Has 8 charactars long", hasMinimalLength),
        verticalSpace(2),
        buildValidationRow("At Least Has One Number", hasNumber),
        verticalSpace(2),
        buildValidationRow(
            "At Least Has One Special Charactar", hasSpetialCharactars),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidation) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.grey,
        ),
        horezontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidation ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color:
                  hasValidation ? ColorsManager.grey : ColorsManager.darkblue),
        )
      ],
    );
  }
}
