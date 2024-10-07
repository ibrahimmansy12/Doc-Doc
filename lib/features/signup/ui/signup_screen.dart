import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/core/widgets/app_text_button.dart';
import 'package:flutter_advance/features/log%20in/ui/widgets/termes_and_conitions_text.dart';
import 'package:flutter_advance/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter_advance/features/signup/ui/widgets/already_have_an_account.dart';
import 'package:flutter_advance/features/signup/ui/widgets/signup_bloc_listner.dart';
import 'package:flutter_advance/features/signup/ui/widgets/signup_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupScreen> {
  //bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            // SizedBox(
            //   height: 8.h,
            // ),
            Text(
              "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
              style: TextStyles.font14grayregular,
            ),
            verticalSpace(36),
            Column(
              children: [
                const SignupForm(),
                // verticalSpace(24),
                // Align(
                //   alignment: AlignmentDirectional.centerEnd,
                //   child: Text(
                //     "Forget Password?",
                //     style: TextStyles.font13blueregular,
                //   ),
                // ),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Login",
                  textStyle: TextStyles.font16WhitesemBold,
                  onpressed: () {
                    validateThenDoSignup(context);
                  },
                ),
                verticalSpace(16),
                const TermesAndConitionsText(),
                verticalSpace(60),
                const AlreadyHaveAnAccount(), const SignupBlocListner(),
              ],
            )
          ],
        ),
      ),
    )));
  }
}

void validateThenDoSignup(BuildContext context) {
  if (context.read<SignupCubit>().formkey.currentState!.validate()) {
    context.read<SignupCubit>().emaitSignup();
  }
}
