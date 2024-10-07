import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorLocationTap extends StatelessWidget {
  const DoctorLocationTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(30),
          textitem("Practice Place", "Egypt"),
          verticalSpace(14),
          Text(
            "Location Map",
            style: TextStyles.font16darkbluesemBold,
            overflow: TextOverflow.ellipsis,
          ),
          verticalSpace(10),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset(
              "assets/images/map.png",
              height: 258.h,
              width: 342.w,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }

  textitem(String address, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          address,
          style: TextStyles.font16darkbluesemBold,
          overflow: TextOverflow.ellipsis,
        ),
        verticalSpace(12),
        Text(content,
            style: TextStyles.font14grayregular, overflow: TextOverflow.fade)
      ],
    );
  }
}
