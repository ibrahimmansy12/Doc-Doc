import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Hi, Ibrahim !",
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              "How Are you Today?",
              style: TextStyles.font11grayreguler,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
            radius: 24.0,
            backgroundColor: ColorsManager.morelighterGrey,
            child: SvgPicture.asset("assets/svgs/notification_button.svg"))
      ],
    );
  }
}
