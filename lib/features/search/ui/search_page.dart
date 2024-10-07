import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/widgets/core_app_bar.dart';
import 'package:flutter_advance/features/search/ui/widget/search_bloc_builder.dart';
import 'package:flutter_advance/features/search/ui/widget/search_filter_list_row.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CoreAppBar(
        appBartext: "Recommendation Doctor",
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(23),
          width: double.infinity,
          child: Column(
            children: [
              const SearchFilterListRow(),
              verticalSpace(26),
              const SearchBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}

// Expanded(
//                   child: ListView.builder(
//                 itemCount: 12,
//                 itemBuilder: (context, index) {
//                   return DoctorListViewItem(doctorData: BlocProvider.of<HomeCubit>(context).specializatonList.) ;
//                 },
//               ))