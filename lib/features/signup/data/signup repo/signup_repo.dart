import 'package:flutter_advance/core/networking/api_handler.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
//import 'package:flutter_advance/features/log%20in/data/models/login_request_body.dart';
//import 'package:flutter_advance/features/log%20in/data/models/login_response.dart';
import 'package:flutter_advance/features/signup/data/model/signup_request_body.dart';
import 'package:flutter_advance/features/signup/data/model/signup_responce_body.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);
  Future<ApiResult<SignupResponceBody>> signup(
      SignupRequestBody signRequestBody) async {
    try {
      final responce = await _apiService.signup(signRequestBody);
      return ApiResult.success(responce);
    } catch (e) {
      return ApiResult.failure(ApiHandler.handle(e));
    }
  }
}
