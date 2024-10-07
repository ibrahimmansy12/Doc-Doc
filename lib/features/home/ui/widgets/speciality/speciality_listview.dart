import 'package:flutter/material.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/features/home/ui/widgets/speciality/specialization_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key, required this.specializationDatalist});
  final List<SpecializationsData?> specializationDatalist;

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}
    var specialityindex = 0;

class _SpecialityListViewState extends State<SpecialityListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDatalist.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationDatalist[index]?.id);

              setState(() {
                specialityindex = index;
              });
            },
            child: SpecializationListViewItem(
              specializationsData: widget.specializationDatalist[index],
              index: index,
              sellectedindex: specialityindex,
            ),
          );
        },
      ),
    );
  }
}
