import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/features/doctor%20page/ui/doctor_page.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/theming/text_style.dart';

class DoctorListViewItem extends StatelessWidget {
  const DoctorListViewItem({super.key, this.doctorData});
  final Doctors? doctorData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //  context.pushNamed(ERouts.doctorscreen);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DoctorPage(
            doctorData: doctorData,
          ),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: doctorData?.photo.toString() ??
                  "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Shimmer.fromColors(
                  baseColor: ColorsManager.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 110.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                  ),
                );
              },
              imageBuilder: (context, imageProvider) => Container(
                width: 110.w,
                height: 120.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 120.h,
            //   width: 110.w,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(12.0),
            //     child: doctorData?.name == null
            //         ? Image.asset(
            //             "assets/images/T 84 (1).png",
            //             height: 120.h,
            //             width: 110.w,
            //             fit: BoxFit.cover,
            //           )
            //         : Image.network(
            //             doctorData!.photo.toString(),
            //             height: 120.h,
            //             width: 110.w,
            //             fit: BoxFit.cover,
            //           ),
            //   ),
            // ),
            horezontalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    doctorData?.name ?? "Name",
                    style: TextStyles.font18DarkBlueBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    '${doctorData?.degree} | ${doctorData?.phone}',
                    style: TextStyles.font12graymedium,
                    overflow: TextOverflow.visible,
                  ),
                  Text(
                    doctorData?.email ?? "noemail@mail.com",
                    style: TextStyles.font12graymedium,
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
