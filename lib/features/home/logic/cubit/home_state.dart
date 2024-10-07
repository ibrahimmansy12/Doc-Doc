import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  //spesialization
  const factory HomeState.initial() = _Initial;
  const factory HomeState.spesilizationloading() = Spesilizationloading;

  const factory HomeState.spesilizationsucess(
          List<SpecializationsData?>? specializationsDataList) =
      Spesilizationsucess;
  const factory HomeState.spesilizationerror(ApiErrorModel apiErrorModel) =
      Spesilizationerror;
  //Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? docotrsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsFaliure(ApiErrorModel errorHandler) =
      DoctorsFaliure;
}
