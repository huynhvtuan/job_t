import 'package:auto_route/auto_route.dart';
import 'package:job_t/core/config/resources/routes_manager.gr.dart';
import 'package:job_t/presentation/bookmarks/bookmark_screen.dart';
import 'package:job_t/presentation/chats/chat_screen.dart';
import 'package:job_t/presentation/device_management/device_management_screen.dart';
import 'package:job_t/presentation/profile/profile_screen.dart';

class RouteName {
  static const String onBoard = '/';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String mainBoard = '/main-board';
  static const String home = 'home';
  static const String chat = 'chat';
  static const String bookmark = 'bookmark';
  static const String deviceMgmt = 'device-mgmt';
  static const String profile = 'profile';
  static const String jobDetail = '/job-detail';
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class RoutesManager extends $RoutesManager {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: RouteName.onBoard, page: OnBoardingScreenRoute.page),
        AutoRoute(path: RouteName.login, page: LoginScreenRoute.page),
        AutoRoute(path: RouteName.signUp, page: RegistrationScreenRoute.page),
        AutoRoute(path: RouteName.jobDetail, page: JobDetailScreenRoute.page),
        AutoRoute(
            path: RouteName.mainBoard,
            page: MainScreenRoute.page,
            children: [
              AutoRoute(path: RouteName.home, page: HomeScreenRoute.page),
              AutoRoute(path: RouteName.chat, page: ChatScreenRoute.page),
              AutoRoute(
                  path: RouteName.bookmark, page: BookmarkScreenRoute.page),
              AutoRoute(
                  path: RouteName.deviceMgmt,
                  page: DeviceManagementScreenRoute.page),
              AutoRoute(path: RouteName.profile, page: ProfileScreenRoute.page),
            ]),
      ];
}
