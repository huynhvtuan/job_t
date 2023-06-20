import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/assets.gen.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: AppColor.lightBgJobItem,
        child: SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(Assets.images.user.path),
                    ),
                    Space.x(3)!,
                    const Expanded(
                        child: ReusableText(text: "Java Backend Developer")),
                  ],
                ),
                Space.y(5)!,
                ReusableText(
                  text: "Java Backend Developer",
                  style: AppText.b1b!,
                ),
                ReusableText(
                  text: "New York(Remote)",
                  style: AppText.b2?.copyWith(color: AppColor.darkGrey),
                ),
                Space.y2!,
                Row(
                  children: [
                    Expanded(
                      child: ReusableText(
                        text: "10k/monthly",
                        style: AppText.b1b!,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 13,
                      backgroundColor: AppColor.lightBackgroundColor,
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 12,
                        color: AppColor.secondaryColor,
                      ),
                    )
                  ],
                ),
                Space.y(5)!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
