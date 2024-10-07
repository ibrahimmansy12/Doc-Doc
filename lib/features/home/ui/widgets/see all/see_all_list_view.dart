import 'package:flutter/material.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_advance/features/home/ui/widgets/see%20all/see_all_list_view_item.dart';

class SeeAllListView extends StatelessWidget {
  const SeeAllListView({super.key, this.specializationDatalist});
  final List<SpecializationsData?>? specializationDatalist;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: double.infinity,
      // margin: const EdgeInsets.fromLTRB(14, 14, 14, 14),
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount:specializationDatalist?.length,
        itemBuilder: (context, index) {
          return  SeeAllListViewItem(specializationsData:specializationDatalist?[index] ,);
        },
      ),
    );
  }
}
