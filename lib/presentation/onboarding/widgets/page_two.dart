import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/assets.gen.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/core/res/responsive_size.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.kLightBlue,
        child: Column(
          children: [
            Space.y(44.w)!,
            Assets.images.page2.image(),
            Space.y(56.w)!,
            Column(
              children: [
                ReusableText(
                    text: "Find your dream job",
                    style: AppText.b1!
                        .copyWith(fontSize: isFontSize(context, 20))),
                Space.x1!,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "We help you find your dream job according to your skillset, location and preference to build your career",
                    textAlign: TextAlign.center,
                    style: AppText.l1!,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
