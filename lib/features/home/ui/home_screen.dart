import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/spacing.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:flutter_advance/features/home/ui/widgets/doctors/doctors_bloc_builder.dart';
import 'package:flutter_advance/features/home/ui/widgets/home_botton_navigation_bar.dart';
import 'package:flutter_advance/features/home/ui/widgets/home_floating_action_botton.dart';
import 'package:flutter_advance/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_advance/features/home/ui/widgets/speciality/specialization_bloc_bilder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const HomeFloatingActionBotton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const HomeBottonNavigationBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAll(),
              verticalSpace(16),
              const SpecializationBlocBilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
/* */
























// BottomNavigationBar(items: [const BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),const BottomNavigationBarItem(icon: Icon(Icons.message))]),

// NavigationBar(height: 80, destinations: [
//         const NavigationDestination(icon: Icon(Icons.home_outlined), label: ""),
//         const NavigationDestination(
//             icon: Icon(Icons.message_rounded), label: ""),
//         const NavigationDestination(
//             icon: Icon(Icons.calendar_month_outlined), label: ""),
//         Container(
//           color: ColorsManager.morelightGrey,
//         )
//       ]),