import 'package:flutter_advance/core/networking/api_handler.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';

class SpesilizationRepo {
  final ApiService apiService;

  SpesilizationRepo(this.apiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpesilization() async {
    try {
      final responce = await apiService.getSpesilization();
      return ApiResult.success(responce);
    } catch (e) {
      return ApiResult.failure(ApiHandler.handle(e));
    }
  }
}
