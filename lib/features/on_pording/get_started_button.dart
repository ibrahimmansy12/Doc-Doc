import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/routing/routs.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';

class GetStartedbutton extends StatelessWidget {
  const GetStartedbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(ERouts.loginScreen);
        },
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(ColorsManager.mainblue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 52)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Text(
          "Get Started",
          style: TextStyles.font16WhitesemBold,
        ));
  }
}
