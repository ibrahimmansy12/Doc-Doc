// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctors/doctor_list_view_item.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({
    super.key,
    this.doctorsList,
  });
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
                print("=====search home list view = {${doctorsList?.length}}");

    return Expanded(
        child: ListView.builder(
      itemCount:doctorsList?.length,
      itemBuilder: (context, index) {
        return DoctorListViewItem(doctorData: doctorsList![index]
        );
      },
    ));
  }
}
