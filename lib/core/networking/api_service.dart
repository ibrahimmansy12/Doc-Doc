import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_constanse.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_advance/features/log%20in/data/models/login_request_body.dart';
import 'package:flutter_advance/features/log%20in/data/models/login_response.dart';
import 'package:flutter_advance/features/search/data/model/search_model.dart';
import 'package:flutter_advance/features/signup/data/model/signup_request_body.dart';
import 'package:flutter_advance/features/signup/data/model/signup_responce_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstanse.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstanse.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestbody,
  );

  @POST(ApiConstanse.signup)
  Future<SignupResponceBody> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
  @GET(ApiConstanse.spesialization)
  Future<SpecializationsResponseModel> getSpesilization();
   @GET(ApiConstanse.doctors)
  Future<SearchModel> getDoctors();
}
