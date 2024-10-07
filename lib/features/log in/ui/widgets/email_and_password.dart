import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/app_regex.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/widgets/app_text_form_field.dart';
import 'package:flutter_advance/features/log%20in/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/features/log%20in/ui/widgets/password_validations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasMinimalLength = false;
  bool hasSpecialCharactares = false;
  bool hasNumberes = false;
  bool isObsecureText = true;
  late TextEditingController passwordcontroler;
  @override
  void initState() {
    super.initState();
    passwordcontroler = context.read<LoginCubit>().passwordcontroler;

    steupPasswordControlerListner();
  }



  void steupPasswordControlerListner() {
    passwordcontroler.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordcontroler.text);
        hasNumberes = AppRegex.hasNumber(passwordcontroler.text);
        hasSpecialCharactares =
            AppRegex.hasSpecialCharacter(passwordcontroler.text);
        hasMinimalLength = AppRegex.hasMinLength(passwordcontroler.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordcontroler.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formkey,
        child: Column(
          children: [
            AppTextFormField(
              hinttext: "Email",
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "please inter validate email";
                }
              },
              controller:  context.read<LoginCubit>().emailcontroler,
            ),
            verticalSpace(18),
            AppTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please inter validate password";
                }
              },
              hinttext: "Password",
              isObsecure: isObsecureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObsecureText = !isObsecureText;
                  });
                },
                child: Icon(
                    isObsecureText ? Icons.visibility_off : Icons.visibility),
              ),
              controller:  context.read<LoginCubit>().passwordcontroler,
            ),
            verticalSpace(24),
            PasswordValidations(
              hasLowerCase: hasLowerCase,
              hasMinimalLength: hasMinimalLength,
              hasNumber: hasNumberes,
              hasSpetialCharactars: hasSpecialCharactares,
              hasUpperCase: hasUpperCase,
            )
          ],
        ));
  }
    @override
  void dispose() {
    
    super.dispose();
    passwordcontroler.dispose();
  }
}
