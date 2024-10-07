import 'package:flutter_advance/core/networking/api_handler.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/features/search/data/model/search_model.dart';

class SearchRepo {
  final ApiService apiService;


  SearchRepo(this.apiService);
  Future<ApiResult<SearchModel >> getDoctors() async {
    try {
      final responce = await apiService.getDoctors();
      return ApiResult.success(responce );
    } catch (e) {
      return ApiResult.failure(ApiHandler.handle(e));
    }
  }
}
