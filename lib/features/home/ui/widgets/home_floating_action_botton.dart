import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/routing/routs.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFloatingActionBotton extends StatelessWidget {
  const HomeFloatingActionBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      width: 72.w,
      child: FloatingActionButton(
          backgroundColor: ColorsManager.mainblue,
          onPressed: () {
            context.pushNamed(ERouts.searchscreen);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
          child: Icon(
            Icons.search_sharp,
            size: 38.sp,
            color: Colors.white,
          )),
    );
  }
}
