import 'package:flutter_advance/core/networking/api_handler.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/features/log%20in/data/models/login_request_body.dart';
import 'package:flutter_advance/features/log%20in/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final responce = await _apiService.login(loginRequestBody);
      return ApiResult.success(responce);
    } catch (e) {
      return ApiResult.failure(ApiHandler.handle(e));
    }
  }
}
