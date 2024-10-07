import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/core/theming/text_style.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorPhotoAndDataRow extends StatelessWidget {
  const DoctorPhotoAndDataRow({super.key, this.doctorData});
  final Doctors? doctorData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
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
                  width: 74.w,
                  height: 74.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 74.w,
              height: 74.h,
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
    );
  }
}
