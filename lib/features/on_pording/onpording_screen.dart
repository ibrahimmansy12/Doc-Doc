import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/features/on_pording/doc_logo_and_name.dart';
import 'package:flutter_advance/features/on_pording/doctor_image_and_text.dart';
import 'package:flutter_advance/features/on_pording/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnpordingScreen extends StatelessWidget {
  const OnpordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: TextStyles.font13grayreguler,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const GetStartedbutton(),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
