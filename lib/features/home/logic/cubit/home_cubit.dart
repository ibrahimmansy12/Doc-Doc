// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_advance/features/home/data/repo/spesilization_repo.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final SpesilizationRepo spesilizationRepo;
  HomeCubit(
    this.spesilizationRepo,
  ) : super(const HomeState.initial());
  List<SpecializationsData?> specializatonList = [];
  void getspesilization() async {
    emit(const HomeState.spesilizationloading());
    //Future.delayed(Duration(seconds: 5));
    final response = await spesilizationRepo.getSpesilization();
    response.when(success: (specializationsDataList) {
      specializatonList = specializationsDataList.specializationDataList ?? [];

      getDoctorsList(specializationId: specializatonList.first?.id);
      emit(HomeState.spesilizationsucess(
          specializationsDataList.specializationDataList));
    }, failure: (apiErrorModel) {
      emit(HomeState.spesilizationerror(
         apiErrorModel));
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorListBySpecializationId(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.spesilizationerror(
          ApiErrorModel(message: "No Doctors Found")));
    }
  }

  getDoctorListBySpecializationId(specializationId) {
    return specializatonList
        .firstWhere(
            (spectialization) => spectialization?.id == specializationId)
        ?.doctorsList;
  }
}
