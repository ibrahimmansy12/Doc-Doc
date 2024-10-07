import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/features/search/logic/cubit/search_cubit.dart';
import 'package:flutter_advance/features/search/ui/widget/search_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilterListRow extends StatelessWidget {
  const SearchFilterListRow({super.key, this.onChanged});
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 7,
            child: SearchTextFormField(
            //  searchController: context.read<SearchCubit>().sesrchControler,
              onChanged: onChanged,
            )),
        horezontalSpace(2),
        Expanded(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_list_rounded,
                  size: 30,
                )))
      ],
    );
  }
}
