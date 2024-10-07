import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/constance_helper.dart';
import 'package:flutter_advance/core/routing/app_router.dart';
import 'package:flutter_advance/core/routing/routs.dart';
import 'package:flutter_advance/core/theming/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocsApp extends StatelessWidget {
  final EAppRouter? approuting;
  const DocsApp({super.key, required this.approuting});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
            primaryColor: ColorsManager.mainblue,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        initialRoute: isLogedInUser ? ERouts.homeScreen : ERouts.loginScreen,
        onGenerateRoute: approuting?.generateRouter,
      ),
    );
  }
}
