import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentpading;
  final InputBorder? focuseBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hinttext;
  final bool? isObsecure;
  final Widget? suffixIcon;
  final Color? formBackgrounfColor;
  final TextEditingController? controller;
  final Function(String?)? validator;
  const AppTextFormField(
      {super.key,
      this.contentpading,
      this.focuseBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hinttext,
      this.isObsecure,
      this.suffixIcon,
      this.formBackgrounfColor,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: formBackgrounfColor ?? ColorsManager.morelightGrey,
        filled: true,
        isDense: true,
        contentPadding: contentpading ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focuseBorder ??
            OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 1.3, color: ColorsManager.mainblue),
                borderRadius: BorderRadius.circular(16.0)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1.3, color: ColorsManager.lighterGrey),
                borderRadius: BorderRadius.circular(16.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.3, color: Colors.red),
            borderRadius: BorderRadius.circular(16.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.3, color: Colors.red),
            borderRadius: BorderRadius.circular(16.0)),
        hintStyle: hintStyle ?? TextStyles.font14lightgrayregular,
        hintText: hinttext,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObsecure ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator!(value);
      },
      controller: controller,
    );
  }
}
