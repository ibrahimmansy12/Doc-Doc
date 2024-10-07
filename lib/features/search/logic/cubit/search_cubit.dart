import 'package:flutter/material.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_advance/features/search/data/repo/search_repo.dart';
import 'package:flutter_advance/features/search/logic/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;
  SearchCubit(this.searchRepo) : super(const SearchState.initial());
  List<Doctors?>? doctorslist;
  List<Doctors?>? doctorsSearchList = [];
  TextEditingController sesrchControler = TextEditingController();
  void getdoctors() async {
    emit(const SearchState.searchLoading());
    final response = await searchRepo.getDoctors();
    response.when(
      success: (doctors) {
        doctorslist = doctors.doctorsList;

        print("============doctorslist ${doctors.doctorsList?.length}");
        print("============doctorslist ${doctorslist?.length}");
        print("============doctorslist ${doctorsSearchList?.length}");
        emit(SearchState.searchSuccess(doctorslist));

        // doctorslist=data.specializationDataList.first.;
      },
      failure: (apiErrorModel) {
        emit(SearchState.searchFaliure(apiErrorModel));
      },
    );
  }

  searchForDoctorsWithName(String doctorName) {
    emit(const SearchState.searchLoading());

    doctorsSearchList = doctorslist!
        .where((doctor) => doctor!.name!.toLowerCase().startsWith(doctorName))
        .toList();
    emit(SearchState.searchSuccess(doctorsSearchList));
    print("=========filter list{$doctorsSearchList}");
    // print("=========doctorName{$doctorslist}");
  }
}
