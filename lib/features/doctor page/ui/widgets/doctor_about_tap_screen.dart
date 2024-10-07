import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';

class DoctorAbout extends StatelessWidget {
  const DoctorAbout({super.key, this.doctorData});
  final Doctors? doctorData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(30),
          textitem("Degree", doctorData!.degree.toString()),
          verticalSpace(22),
          textitem("Email & Phone",
              "${doctorData!.email.toString()} \n ${doctorData!.phone.toString()}"),
          verticalSpace(22),
          textitem("Address", doctorData!.address.toString()),
          verticalSpace(22),
          textitem("Price", doctorData!.price.toString()),
        ],
      ),
    );
  }

  textitem(String address, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          address,
          style: TextStyles.font16darkbluesemBold,
          overflow: TextOverflow.ellipsis,
        ),
        verticalSpace(8),
        Text(content,
            style: TextStyles.font14grayregular, overflow: TextOverflow.fade)
      ],
    );
  }
}
