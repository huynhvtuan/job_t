import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:job_t/presentation/onboarding/provider/onboarding_provider.dart';
import 'package:job_t/presentation/onboarding/widgets/page_one.dart';
import 'package:job_t/presentation/onboarding/widgets/page_three.dart';
import 'package:job_t/presentation/onboarding/widgets/page_two.dart';
import 'package:provider/provider.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Consumer<OnBoardNotifier>(builder: (context, onBoardNotifier, child) {
        return Stack(
          children: [
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            ),
          ],
        );
      }),
    );
  }
}
