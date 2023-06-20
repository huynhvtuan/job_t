import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:job_t/core/config/app_dimensions.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/assets.gen.dart';
import 'package:job_t/presentation/widgets/common/custom_appbar.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';
import 'package:job_t/presentation/widgets/drawer/drawer_icon.dart';
import 'package:job_t/presentation/widgets/home/list_slider_view.dart';
import 'package:job_t/presentation/widgets/home/search_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomAppbar(
            leading: const DrawerIcon(),
            actions: [
              CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(
                    Assets.images.user.path,
                  ))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Search \nFind & Apply",
                  style:
                      AppText.b1b!.copyWith(fontSize: AppDimensions.font(20)),
                ),
              ),
              Space.y1!,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SearchWidget(),
              ),
              Space.y1!,
              const ListSliderView(),
              Space.y1!,
              const ListSliderView(),
            ],
          ),
        ),
      ),
    );
  }
}
