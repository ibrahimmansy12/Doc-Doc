import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/features/search/logic/cubit/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextFormField extends StatefulWidget {
  const SearchTextFormField({
    super.key,
    this.searchController,
    // this.doctorsSearchList,
    // this.allDoctorsList,
    this.onChanged,
  });
  final TextEditingController? searchController;
  // final List<Doctors>? doctorsSearchList;
  // final List<Doctors>? allDoctorsList;
  final Function(String)? onChanged;
  @override
  State<SearchTextFormField> createState() => _SearchTextFormFieldState();
}

class _SearchTextFormFieldState extends State<SearchTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: context
          .read<SearchCubit>()
          .sesrchControler, //widget.searchController, //searCharacterControler,
      cursorColor: ColorsManager.morelighterGrey,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: ColorsManager.morelighterGrey)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: ColorsManager.morelighterGrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: ColorsManager.morelighterGrey)),
          filled: true,
          fillColor: ColorsManager.morelighterGrey,
          prefixIcon: const Icon(
            Icons.search,
            color: ColorsManager.darkGrey,
          ),
          hintText: 'Search',
          border: InputBorder.none,
          hintStyle: TextStyles.font12darkgreymediume),
      onChanged: (doctorName) {
        context.read<SearchCubit>().searchForDoctorsWithName(doctorName);
      },
    );
  }

  // addSerchedforSerchedList(
  //     List? allDoctorsList, List? doctorsSearchList, String searchedCaracter) {
  //   doctorsSearchList = allDoctorsList
  //       ?.where((chararacter) =>
  //           chararacter.name.toLowerCase().startsWith(searchedCaracter))
  //       .toList();
  //   setState(() {});
  // }
}
