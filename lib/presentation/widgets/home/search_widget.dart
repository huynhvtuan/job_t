import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.searchengin,
              color: AppColor.secondaryColor,
            ),
            Space.x2!,
            Expanded(
                child: ReusableText(
              text: "Search for jobs",
              style: AppText.b1?.copyWith(
                color: AppColor.secondaryColor,
              ),
            )),
            const Icon(
              FontAwesomeIcons.sliders,
              color: AppColor.lightGrey,
            ),
          ],
        ),
        const Divider(
          thickness: 2,
        )
      ],
    );
  }
}
