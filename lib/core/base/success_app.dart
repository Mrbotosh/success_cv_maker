import 'package:flutter/material.dart';
import 'package:success_cv_maker/core/router/route_management.gr.dart';
import 'package:success_cv_maker/core/theme/app_theme.dart';

class SuccessApp extends StatelessWidget {
  SuccessApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(initialRoutes: [
        const SplashRoute(),
      ]),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: appThemeData[AppTheme.PRIMARY_THEME],
    );
  }
}
