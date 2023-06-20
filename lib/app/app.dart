import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_t/core/config/app_config.dart';
import 'package:job_t/core/config/resources/routes_manager.dart';
import 'package:job_t/core/config/resources/theme_manager.dart';
import 'package:job_t/core/theme/cubit/theme_cubit.dart';
import 'package:job_t/presentation/login/provider/login_provider.dart';
import 'package:job_t/presentation/main/provider/zoom_provider.dart';
import 'package:job_t/presentation/onboarding/provider/onboarding_provider.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _routesManager = RoutesManager();

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
          ChangeNotifierProvider(create: (context) => LoginProvider()),
          ChangeNotifierProvider(create: (context) => ZoomProvider())
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return ScreenUtilInit(
              useInheritedMediaQuery: true,
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  routerConfig: _routesManager.config(),
                  localizationsDelegates: context.localizationDelegates,
                  theme: AppTheme.themeData(state.isDarkThemeOn, context),
                  themeMode: ThemeMode.light,
                );
              });
        }),
      ),
    );
  }
}
