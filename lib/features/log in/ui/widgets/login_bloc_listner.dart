import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/core/routing/routs.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
//import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/features/log%20in/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/features/log%20in/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is Loading || current is Success || current is Error;
      },
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainblue,
                ),
              ),
            );
          },
          success: (ainala) {
            context.pop();
            context.pushNamedAndRemoveUntil(ERouts.homeScreen,
                predicate: (Route<dynamic> route) => false);
          },
          failure: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context,ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                apiErrorModel.getAllErrors(),
                style: TextStyles.font15DarkBlueMedium,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      "Got it",
                      style: TextStyles.font14BlueSemyBold,
                    ))
              ],
            ));
  }
}
