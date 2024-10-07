import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeBottonNavigationBar extends StatelessWidget {
  const HomeBottonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
          color: Colors.white,
          height: 80.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        size: 30.sp,
                      )),
                  horezontalSpace(32),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message_outlined,
                        size: 30.sp,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calendar_month_sharp,
                        size: 30.sp,
                      )),
                  horezontalSpace(40),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    child: ClipRRect(
                      child: SvgPicture.asset(
                          "assets/svgs/notification_button.svg"),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
