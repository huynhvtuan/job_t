import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:job_t/app/di/get_it.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> initDependencyInjection() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  getIt.init();
}

@module
abstract class UtilInjectableModule {
  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  // @singleton
  // RoutesManager get appRouter => RoutesManager();
}
