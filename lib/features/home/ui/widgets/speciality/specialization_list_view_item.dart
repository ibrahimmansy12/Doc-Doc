import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecializationListViewItem extends StatelessWidget {
  const SpecializationListViewItem(
      {super.key,
      required this.specializationsData,
      required this.index,
      required this.sellectedindex});
  final SpecializationsData? specializationsData;
  final int index;
  final int sellectedindex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
         sellectedindex==index
              ? Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorsManager.darkblue, width: 2),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightblue,
                    child: SvgPicture.asset(
                      "assets/svgs/docdoc_logo.svg",
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightblue,
                  child: SvgPicture.asset(
                    "assets/svgs/docdoc_logo.svg",
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? "Speciality",
            style: index == sellectedindex
                ? TextStyles.font14DarkBlueBold
                : TextStyles.font12darkblueregular,
          )
        ],
      ),
    );
  }
}
