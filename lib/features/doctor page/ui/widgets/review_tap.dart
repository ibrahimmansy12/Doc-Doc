import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewTap extends StatelessWidget {
  const ReviewTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(30),
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                "assets/images/reviews.png",
                height: 420.h,
                width: 342.w,
                fit: BoxFit.fill,
              ),
            );
          },
        )),
      ],
    ); //SingleChildScrollView(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       verticalSpace(30),
    //       verticalSpace(14),
    //       Text(
    //         "Location Map",
    //         style: TextStyles.font16darkbluesemBold,
    //         overflow: TextOverflow.ellipsis,
    //       ),
    //       verticalSpace(10),
    // ClipRRect(
    //   borderRadius: const BorderRadius.all(Radius.circular(12)),
    //   child: Image.asset(
    //     "assets/images/Map.png",
    //     height: 258.h,
    //     width: 342.w,
    //     fit: BoxFit.fill,
    //   ),
    // )
    //     ],
    //   ),
    // );
  }
}
