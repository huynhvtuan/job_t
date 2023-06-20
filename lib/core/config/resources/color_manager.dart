import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const primaryColor = Color(0xFF09FBD3);
  static const secondaryColor = Color(0xFFFE53BB);
  static const textColor = Color(0xFF2B2B2B);
  static const lightgrayColor = Color(0x44948282);
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF2B2B2B);

// onboard
  static const kLightPurple = Color(0xff6352c5);
  static const kDarkPurple = Color(0xff6352c5);

  static const kLightBlue = Color(0xff3663e3);
  static const kDarkBlue = Color(0xff1c153e);
  static const kCyanColor = const Color(0xFF08F7FE);
  static const btnColor = Color(0xFF4E5E80);
  static const defaultPadding = 200.0;
  static const defaultDuration =
      Duration(seconds: 1); // we use it on our animation
  static const maxWidth = 1440.0; // max width of our web

  static const Color lightBackgroundColor = const Color(0xFFFFFFFF);
  static Color lightPrimaryColor = const Color(0xffFFDDBF);
  static const Color lightTextColor = const Color(0xFF403930);
  static Color lightDividerColor = const Color(0x44948282);
  static Color lightOutLineBtnColor = const Color(0xFF4D5566);
  static const lightGrey = Color.fromARGB(148, 178, 175, 175);
  static const lightTextFieldBgGrey = Color.fromARGB(147, 226, 219, 219);
  static const lightBgJobItem = Color.fromARGB(162, 253, 247, 247);

//
  static const Color darkBackgroundColor = const Color(0xFF2B2B2B);
  Color darkPrimaryColor = const Color(0xFFFFDDBF);
  static const Color darkTextColor = const Color(0xFFF3F2FF);
  Color darkDividerColor = const Color(0x441C2A3D);
  Color darkOutLineBtnColor = const Color(0xFFF3F2FF);
  static const darkGrey = Color(0xFF9B9B9B);

  static const pinkpurple = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0XFFaa367c), Color(0XFF4a2fbd)],
  );

  static const grayBack = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
  );
  static const grayWhite = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFFFFF), Color(0xFFF3F2FF)],
  );

  static const buttonGradi = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0XFF7DE7EB), Color(0XFF33BBCF)],
  );

  static const contactGradi = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
  );

//
  static BoxShadow primaryColorShadow = BoxShadow(
    color: primaryColor.withAlpha(100),
    blurRadius: 12.0,
    offset: const Offset(0.0, 0.0),
  );
  static BoxShadow blackColorShadow = BoxShadow(
    color: Colors.black.withAlpha(100),
    blurRadius: 12.0,
    offset: const Offset(0.0, 0.0),
  );
}
