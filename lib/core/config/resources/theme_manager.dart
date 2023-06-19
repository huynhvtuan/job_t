import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:job_t/core/config/resources/color_manager.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.darkTheme : ThemeColors.lightTheme;
  }
}

class ThemeColors {
  const ThemeColors._();
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      primaryColor: AppColor.primaryColor,
      backgroundColor: AppColor.lightBackgroundColor,
      scaffoldBackgroundColor: AppColor.lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.lightBackgroundColor,
      ),
      textTheme: TextTheme(button: TextStyle(color: AppColor.lightTextColor)));

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: AppColor.primaryColor,
    backgroundColor: AppColor.darkBackgroundColor,
    scaffoldBackgroundColor: const Color(0xFF00040F),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      button: TextStyle(color: AppColor.darkTextColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.darkBackgroundColor,
    ),
  );
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //
  Gradient get serviceCard =>
      brightness == Brightness.light ? AppColor.grayWhite : AppColor.grayBack;

  //
  Gradient get contactCard => brightness == Brightness.light
      ? AppColor.grayWhite
      : AppColor.contactGradi;
}
