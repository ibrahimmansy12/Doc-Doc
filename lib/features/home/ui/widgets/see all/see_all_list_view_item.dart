import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SeeAllListViewItem extends StatelessWidget {
  const SeeAllListViewItem({super.key, this.specializationsData});
  final SpecializationsData? specializationsData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.w,
      height: 128.h,
      //  padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 38,
            backgroundColor: ColorsManager.lightblue,
            child: SvgPicture.asset(
              "assets/svgs/docdoc_logo.svg",
              height: 39.h,
              width: 33.w,
            ),
          ),
          verticalSpace(12),
           Text(specializationsData?.name??"specialization",style:TextStyles.font13DarkBlueRegular,)
        ],
      ),
    );
  }
}
