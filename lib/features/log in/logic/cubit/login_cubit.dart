//import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/constance_helper.dart';
import 'package:flutter_advance/core/helper/shared_prefrance_helper.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/features/log%20in/data/models/login_request_body.dart';
import 'package:flutter_advance/features/log%20in/data/repo/login_repo.dart';
import 'package:flutter_advance/features/log%20in/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:freezed_annotation/freezed_annotation.dart';

//part 'login_state.dart';
//part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  // LoginResponse? loginResponse;
  final formkey = GlobalKey<FormState>();

  void emaitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailcontroler.text, password: passwordcontroler.text));
    response.when(success: (success) async {
      await setToken(success.userData?.token ?? "");
      emit(LoginState.success(success));
    }, failure: (apiErrorModel) {
      emit(LoginState.failure(apiErrorModel));
    });
  }

  Future<void> setToken(String token) async {
    await SharedPrefHelper.setSecuredString(
        SharedPrefranceKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
