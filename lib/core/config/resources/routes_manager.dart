import 'package:auto_route/auto_route.dart';
import 'package:job_t/core/config/resources/routes_manager.gr.dart';

class RouteName {
  static const String onBoard = '/';
  static const String login = '/login';
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class RoutesManager extends $RoutesManager {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: RouteName.onBoard, page: OnBoardingScreenRoute.page),
      ];
}
