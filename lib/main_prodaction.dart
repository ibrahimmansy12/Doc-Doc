import 'package:flutter/material.dart';
import 'package:flutter_advance/core/di/dependancy_ingection.dart';
import 'package:flutter_advance/core/helper/bloc_observer.dart';
import 'package:flutter_advance/core/helper/constance_helper.dart';
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/helper/shared_prefrance_helper.dart';
import 'package:flutter_advance/core/routing/app_router.dart';
import 'package:flutter_advance/docs_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //to fix the text which hidden with flutter screan_util in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkedLogedIn();
  Bloc.observer = AddReminderBlocObserver();

  detupGetit();
  runApp(DocsApp(
    approuting: EAppRouter(),
  ));
}

checkedLogedIn() async {
  String userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefranceKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLogedInUser = true;
    print("==============user token is $userToken ======is login is {$isLogedInUser}");
  } else {
    isLogedInUser = false;
  }
}
