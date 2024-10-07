import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/features/home/data/repo/spesilization_repo.dart';
import 'package:flutter_advance/features/log%20in/data/repo/login_repo.dart';
import 'package:flutter_advance/features/log%20in/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/features/search/data/repo/search_repo.dart';
import 'package:flutter_advance/features/signup/data/signup%20repo/signup_repo.dart';
import 'package:flutter_advance/features/signup/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> detupGetit() async {
  //Doi and Apiservice
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

// home page
  getIt.registerLazySingleton<SpesilizationRepo>(
      () => SpesilizationRepo(getIt()));
//search
getIt.registerLazySingleton<SearchRepo>(
      () => SearchRepo(getIt()));
}
