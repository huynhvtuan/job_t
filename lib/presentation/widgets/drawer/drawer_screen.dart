import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ionicons/ionicons.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/presentation/widgets/drawer/drawer_item.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen(
      {super.key, required this.indexSetter, required this.activeIndex});
  final ValueSetter indexSetter;
  final int activeIndex;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, zoomNotifer, child) {
      return GestureDetector(
        onDoubleTap: () {
          ZoomDrawer.of(context)?.toggle();
        },
        child: Scaffold(
          backgroundColor: AppColor.kLightBlue,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              DrawerItem(
                icon: Ionicons.home_outline,
                title: 'Home',
                indexSetter: widget.indexSetter,
                index: 0,
                activeIndex: widget.activeIndex,
              ),
              DrawerItem(
                icon: Ionicons.chatbubble_outline,
                title: 'Chat',
                indexSetter: widget.indexSetter,
                index: 1,
                activeIndex: widget.activeIndex,
              ),
              DrawerItem(
                icon: Ionicons.bookmark_outline,
                title: 'Bookmarks',
                indexSetter: widget.indexSetter,
                index: 2,
                activeIndex: widget.activeIndex,
              ),
              DrawerItem(
                icon: Icons.devices_other_outlined,
                title: 'Device Mgmt',
                indexSetter: widget.indexSetter,
                index: 3,
                activeIndex: widget.activeIndex,
              ),
              DrawerItem(
                icon: Ionicons.person_outline,
                title: 'Profile',
                indexSetter: widget.indexSetter,
                index: 4,
                activeIndex: widget.activeIndex,
              ),
              const Spacer(),
              DrawerItem(
                icon: Ionicons.log_out_outline,
                title: 'Logout',
                indexSetter: widget.indexSetter,
                index: 5,
                activeIndex: widget.activeIndex,
              ),
            ],
          ),
        ),
      );
    });
  }
}
