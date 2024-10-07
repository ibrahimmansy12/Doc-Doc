import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/routing/routs.dart';
import 'package:flutter_advance/core/theming/text_style.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({
    super.key,
  });
  // final List<SpecializationsData?>? specializationDatalist;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(ERouts.seeallscreen);
          },
          child: Text(
            "See All",
            style: TextStyles.font12blueregular,
          ),
        )
      ],
    );
  }
}
