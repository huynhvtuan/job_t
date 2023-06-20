import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, this.text, required this.leading, this.actions});
  final String? text;
  final Widget leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(),
      backgroundColor: AppColor.lightBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: leading,
      actions: actions,
      centerTitle: true,
      title: ReusableText(
        text: text ?? "",
        style: AppText.b3b!.copyWith(color: AppColor.blackColor),
      ),
      leadingWidth: 30.w,
    );
  }
}
