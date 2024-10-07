import 'package:flutter/material.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_state.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctors/doctor_listview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsFaliure,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (docotrsList) {
            return DoctorListView(
              doctorsList: docotrsList,
            );
          },
          doctorsFaliure: (errorHandler) {
            return const SizedBox.shrink();
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
