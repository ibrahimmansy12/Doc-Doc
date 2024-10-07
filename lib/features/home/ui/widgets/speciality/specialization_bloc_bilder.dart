import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_state.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctors/doctors_shimmer.dart';
import 'package:flutter_advance/features/home/ui/widgets/speciality/speciality_listview.dart';
import 'package:flutter_advance/features/home/ui/widgets/speciality/speciality_shimmer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationBlocBilder extends StatelessWidget {
  const SpecializationBlocBilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Spesilizationsucess ||
          current is Spesilizationloading ||
          current is Spesilizationerror,
      builder: (context, state) {
        return state.maybeWhen(
          spesilizationloading: () {
            return Expanded(
              child: Column(
                children: [
                  const SpecialityShimmerLoading(),
                  verticalSpace(8),
                  const DoctorsShimmerLoading(),
                ],
              ),
            );
          },
          spesilizationerror: (error) {
            return SizedBox.shrink(
              child: Column(
                children: [
                  const DoctorsShimmerLoading(),
                  verticalSpace(8),
                  const SpecialityShimmerLoading()
                ],
              ),
            );
          },
          spesilizationsucess: (specializationDatalist) {
            // final specializationDatalist =
            //     specializationDatalist;

            return SpecialityListView(
              specializationDatalist: specializationDatalist!,
            );
          },
          orElse: () {
            return const SizedBox.shrink(
                //child: Text("or else==========="),
                );
          },
        );
      },
    );
  }
}
