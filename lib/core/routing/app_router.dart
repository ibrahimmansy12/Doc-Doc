import 'package:flutter/material.dart';
import 'package:flutter_advance/core/di/dependancy_ingection.dart';
import 'package:flutter_advance/core/routing/routs.dart';
import 'package:flutter_advance/features/doctor%20page/ui/doctor_page.dart';
import 'package:flutter_advance/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/features/home/ui/home_screen.dart';
import 'package:flutter_advance/features/search/logic/cubit/search_cubit.dart';
import 'package:flutter_advance/features/home/ui/widgets/see%20all/see_all_page.dart';
import 'package:flutter_advance/features/log%20in/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/features/log%20in/ui/login_screen.dart';
import 'package:flutter_advance/features/on_pording/onpording_screen.dart';
import 'package:flutter_advance/features/search/ui/search_page.dart';
import 'package:flutter_advance/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter_advance/features/signup/ui/signup_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EAppRouter {
  Route? generateRouter(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case ERouts.onpordingScreen:
        return MaterialPageRoute(builder: (_) => const OnpordingScreen());
      case ERouts.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case ERouts.signupScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));
      case ERouts.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(getIt())..getspesilization(),
                  child: const HomeScreen(),
                ));
      case ERouts.seeallscreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(getIt())..getspesilization(),
                  child: const SeeAllPage(),
                ));
      case ERouts.searchscreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SearchCubit(getIt())..getdoctors(),
                  child: const SearchPage(),
                ));
   case ERouts.doctorscreen:
        return MaterialPageRoute(
            builder: (_) => const DoctorPage());
      default:
        return null;
    }
  }
}
