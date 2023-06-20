import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_t/presentation/widgets/common/custom_appbar.dart';

@RoutePage()
class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomAppbar(
            leading: GestureDetector(
                onTap: () {
                  context.router.pop();
                },
                child: const Icon(CupertinoIcons.arrow_left)),
            text: "FaceBook",
            actions: [
              GestureDetector(
                onTap: () {},
                child: const Icon(CupertinoIcons.bookmark),
              )
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
