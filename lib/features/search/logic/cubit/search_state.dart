import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.searchLoading() = SearchLoading;
  const factory SearchState.searchSuccess(List<Doctors?>? docotrsList) =
      SearchSuccess;
  const factory SearchState.searchFaliure(ApiErrorModel errorHandler) =
      searchFaliure;
}
