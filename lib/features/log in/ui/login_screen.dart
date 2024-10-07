import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/constance_helper.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/core/widgets/app_text_button.dart';
import 'package:flutter_advance/features/log%20in/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/features/log%20in/ui/widgets/donot_have_an_account.dart';
import 'package:flutter_advance/features/log%20in/ui/widgets/email_and_password.dart';
import 'package:flutter_advance/features/log%20in/ui/widgets/login_bloc_listner.dart';
import 'package:flutter_advance/features/log%20in/ui/widgets/termes_and_conitions_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    isLogedInUser = false;
    print("=================isloged in = {$isLogedInUser}");
    super.initState();
  }

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
                const EmailAndPassword(),
                verticalSpace(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "Forget Password?",
                    style: TextStyles.font13blueregular,
                  ),
                ),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Login",
                  textStyle: TextStyles.font16WhitesemBold,
                  onpressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                verticalSpace(16),
                const TermesAndConitionsText(),
                verticalSpace(60),
                const DontHaveAnAccount(),
                const LoginBlocListner(),
              ],
            )
          ],
        ),
      ),
    )));
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formkey.currentState!.validate()) {
    context.read<LoginCubit>().emaitLoginState();
  }
}
