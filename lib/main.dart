import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:job_t/app/app.dart';
import 'package:job_t/app/di/get_it.dart';
import 'package:job_t/core/config/resources/language_manager.dart';

void main() async {
  await initDependencyInjection();
  runApp(EasyLocalization(
    supportedLocales: const [englishLocal, vietnamLocal],
    path: assetsPathLocalisations,
    fallbackLocale: vietnamLocal,
    child: const App(),
  ));
}
