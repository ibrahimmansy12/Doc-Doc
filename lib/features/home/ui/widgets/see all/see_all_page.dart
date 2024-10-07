import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/widgets/core_app_bar.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_state.dart';
import 'package:flutter_advance/features/home/ui/widgets/see%20all/see_all_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CoreAppBar(
          appBartext: "Doctor Speciality",
        ),
        body: SafeArea(
            child: Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(14, 14, 14, 14),
                child: Column(children: [
                  BlocBuilder<HomeCubit, HomeState>(
                    buildWhen: (previous, current) =>
                        current is Spesilizationsucess ||
                        current is Spesilizationloading ||
                        current is Spesilizationerror,
                    builder: (context, state) {
                      return state.maybeWhen(
                        spesilizationloading: () {
                          return const Expanded(
                            child: Column(
                              children: [],
                            ),
                          );
                        },
                        spesilizationerror: (error) {
                          return SizedBox.shrink(
                            child: Column(
                              children: [
                                verticalSpace(8),
                              ],
                            ),
                          );
                        },
                        spesilizationsucess: (specializationDatalist) {
                          // final specializationDatalist =
                          //     specializationDatalist;

                          return SeeAllListView(
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
                  )
                ]))));
  }
}
