import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_t/core/config/app_dimensions.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/presentation/onboarding/provider/onboarding_provider.dart';
import 'package:job_t/presentation/onboarding/widgets/page_one.dart';
import 'package:job_t/presentation/onboarding/widgets/page_three.dart';
import 'package:job_t/presentation/onboarding/widgets/page_two.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Consumer<OnBoardNotifier>(builder: (context, onBoardNotifier, child) {
        return Stack(
          children: [
            PageView(
              physics: onBoardNotifier.isLastPage
                  ? const NeverScrollableScrollPhysics()
                  : const AlwaysScrollableScrollPhysics(),
              onPageChanged: (value) {
                onBoardNotifier.isLastPage = value == 2;
              },
              controller: _pageController,
              children: [
                const PageOne(),
                const PageTwo(),
                PageThree(),
              ],
            ),
            if (!onBoardNotifier.isLastPage)
              Positioned(
                left: 0,
                bottom: 70.w,
                right: 0,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: WormEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        spacing: 10,
                        dotColor: AppColor.darkGrey.withOpacity(0.5),
                        activeDotColor: AppColor.lightBackgroundColor),
                  ),
                ),
              ),
            if (!onBoardNotifier.isLastPage)
              Positioned(
                  left: 15,
                  right: 15,
                  bottom: AppDimensions.normalize(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _pageController.jumpToPage(2);
                        },
                        child: ReusableText(
                          text: "Skip",
                          style: AppText.b3!
                              .copyWith(color: AppColor.darkTextColor),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        child: ReusableText(
                          text: "Next",
                          style: AppText.b3!
                              .copyWith(color: AppColor.darkTextColor),
                        ),
                      ),
                    ],
                  ))
          ],
        );
      }),
    );
  }
}
