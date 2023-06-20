import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/core/config/resources/routes_manager.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.indexSetter,
    required this.index,
    required this.activeIndex,
  });
  final IconData icon;
  final String title;
  final ValueSetter indexSetter;
  final int index;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        indexSetter(index);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: activeIndex == index
                      ? AppColor.darkTextColor
                      : AppColor.lightGrey,
                ),
                Space.x(5)!,
                ReusableText(
                  text: title,
                  style: AppText.b2!.copyWith(
                    color: activeIndex == index
                        ? AppColor.darkTextColor
                        : AppColor.lightGrey,
                    fontSize: activeIndex == index ? 20 : 16,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
