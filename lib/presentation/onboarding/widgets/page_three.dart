import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/assets.gen.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/core/res/responsive_size.dart';
import 'package:job_t/presentation/widgets/common/default_button.dart';
import 'package:job_t/presentation/widgets/common/outline_btn.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.kLightBlue,
        child: Column(
          children: [
            Space.y(30.w)!,
            Assets.images.page3.image(),
            Space.y1!,
            Column(
              children: [
                ReusableText(
                    text: "Welcome to JOBHUB",
                    style: AppText.b1!.copyWith(
                      fontSize: isFontSize(context, 20),
                      color: AppColor.darkTextColor,
                    )),
                Space.x1!,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "We help you find your dream job according to your skillset, location and preference to build your career",
                    textAlign: TextAlign.center,
                    style: AppText.l1!.copyWith(
                      color: AppColor.darkTextColor,
                    ),
                  ),
                ),
                Space.y2!,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlineCCButton(
                      onPressed: () {},
                      backgroundColor: Colors.transparent,
                      foregroundColor: AppColor.darkTextColor,
                      title: 'Login',
                    ),
                    OutlineCCButton(
                      onPressed: () {},
                      title: 'Sign Up',
                    ),
                  ],
                ),
                Space.y1!,
                ReusableText(
                  text: "Continue as guest",
                  style: AppText.b2!.copyWith(color: AppColor.darkTextColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
