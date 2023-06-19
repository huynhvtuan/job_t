import 'package:flutter/material.dart';
import 'package:job_t/core/config/app_dimensions.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/ui.dart';

class AppConfig {
  // static bool? isLtr;
  // static bool showAds = false;

  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
    // AppTheme.init(context);
    // UIProps.init();
    Space.init();
    AppText.init();
    // isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
