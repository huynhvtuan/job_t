import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/core/config/resources/routes_manager.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';
import 'package:job_t/presentation/widgets/home/slider_item.dart';

class ListSliderView extends StatelessWidget {
  const ListSliderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              ReusableText(
                text: "title",
                style: AppText.b2b,
              ),
              const Spacer(),
              ReusableText(
                text: "ViewAll",
                style: AppText.b2b?.copyWith(color: AppColor.secondaryColor),
              ),
            ],
          ),
        ),
        Space.y1!,
        SizedBox(
          height: 200,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 20.0 : 0,
                      right: index == 9 ? 20.0 : 0),
                  child: SliderItem(
                    onTap: () {
                      context.router.pushNamed(RouteName.jobDetail);
                    },
                  ),
                );
              }),
        )
      ],
    );
  }
}
