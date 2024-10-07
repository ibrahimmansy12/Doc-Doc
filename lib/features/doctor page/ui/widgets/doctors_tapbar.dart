import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_advance/features/doctor%20page/ui/widgets/doctor_about_tap_screen.dart';
import 'package:flutter_advance/features/doctor%20page/ui/widgets/doctor_location_tap.dart';
import 'package:flutter_advance/features/doctor%20page/ui/widgets/review_tap.dart';
import 'package:flutter_advance/features/home/data/model/spesilization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TabController? taparcontroller;

class DoctorsTapbar extends StatefulWidget {
  const DoctorsTapbar({super.key, this.doctorData});
  final Doctors? doctorData;

  @override
  State<DoctorsTapbar> createState() => _DoctorsTapbarState();
}

class _DoctorsTapbarState extends State<DoctorsTapbar>
    with SingleTickerProviderStateMixin {
  TabController? taparcontroller;

  @override
  void initState() {
    taparcontroller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 56.h,
          child: AppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            forceMaterialTransparency: true,
            backgroundColor: Colors.white,
            bottom: TabBar(
              controller: taparcontroller,
              indicatorColor: ColorsManager.mainblue,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              labelColor: ColorsManager.mainblue,
              unselectedLabelColor: Colors.black45,
              tabs: const [
                Tab(
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    "Location",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    "Reviews",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(controller: taparcontroller, children: [
            DoctorAbout(
              doctorData: widget.doctorData,
            ),
            const DoctorLocationTap(),
            const ReviewTap()
          ]),
        )
      ],
    );
  }
}
