import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctors/doctor_listview.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctors/doctors_shimmer.dart';
import 'package:flutter_advance/features/search/logic/cubit/search_cubit.dart';
import 'package:flutter_advance/features/search/logic/cubit/search_state.dart';
import 'package:flutter_advance/features/search/ui/widget/search_filter_list_row.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) =>
          current is SearchLoading ||
          current is SearchSuccess ||
          current is searchFaliure,
      builder: (context, state) {
        return state.maybeWhen(
          searchSuccess: (docotrsList) {
            print("=====search home list = {${docotrsList?.length}}");
    
            return onSeaerchSuccess(docotrsList);
          },
          searchLoading: () {
            return const DoctorsShimmerLoading();
          },
          orElse: () {
            return Container();
          },
        );
      },
    );
  }

   onSeaerchSuccess(List<Doctors?>? docotrsList) {
    print("=====search home list = {${docotrsList?.length}}");

    return DoctorListView(doctorsList: docotrsList);
  }
}
