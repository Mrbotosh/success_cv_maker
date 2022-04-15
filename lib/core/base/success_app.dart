import 'package:flutter/material.dart';
import 'package:success_cv_maker/core/router/route_management.gr.dart';
import 'package:success_cv_maker/core/theme/app_theme.dart';

class SuccessApp extends StatefulWidget {
  const SuccessApp({Key? key}) : super(key: key);

  @override
  State<SuccessApp> createState() => _SuccessAppState();
}

class _SuccessAppState extends State<SuccessApp> {
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
