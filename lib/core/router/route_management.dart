import 'package:auto_route/auto_route.dart';
import 'package:success_cv_maker/core/router/router_path.dart';
import 'package:success_cv_maker/feature/homepage/presentation/view/home_page.dart';
import 'package:success_cv_maker/feature/login/presentation/view/login_page.dart';
import 'package:success_cv_maker/feature/splash_page/presantation/view/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: RouterPath.splashPage, page: SplashPage, initial: true),
    AutoRoute(path: RouterPath.homePage, page: Homepage),
    AutoRoute(path: RouterPath.loginPage, page: LoginPage),
  ],
)
class $AppRouter {}
