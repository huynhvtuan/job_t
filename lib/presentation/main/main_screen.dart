import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/core/config/resources/routes_manager.gr.dart';
import 'package:job_t/presentation/bookmarks/bookmark_screen.dart';
import 'package:job_t/presentation/chats/chat_screen.dart';
import 'package:job_t/presentation/device_management/device_management_screen.dart';
import 'package:job_t/presentation/home/home_screen.dart';
import 'package:job_t/presentation/main/provider/zoom_provider.dart';
import 'package:job_t/presentation/profile/profile_screen.dart';
import 'package:job_t/presentation/widgets/drawer/drawer_screen.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeScreenRoute(),
          ChatScreenRoute(),
          BookmarkScreenRoute(),
          DeviceManagementScreenRoute(),
          ProfileScreenRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return ZoomDrawer(
            menuScreen: DrawerScreen(
              indexSetter: (value) {
                tabsRouter.setActiveIndex(value);
                // zoomNotifer.currentIndex = value;
              },
              activeIndex: tabsRouter.activeIndex,
            ),
            mainScreen: child,
            borderRadius: 30,
            showShadow: true,
            angle: 0.0,
            slideWidth: 250,
            openCurve: Curves.fastOutSlowIn,
            closeCurve: Curves.bounceIn,
            menuBackgroundColor: AppColor.kLightBlue,
          );
        });
  }

  Widget currentScreen() {
    var zoomNotifier = Provider.of<ZoomProvider>(context);
    switch (zoomNotifier.currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ChatScreen();
      case 2:
        return const BookmarkScreen();
      case 3:
        return const DeviceManagementScreen();
      case 4:
        return const ProfileScreen();
      default:
        return const HomeScreen();
    }
  }
}
