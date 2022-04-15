import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:success_cv_maker/core/router/router_path.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login Page"),
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed(RouterPath.homePage);
              },
              child: Text("HomePage"),
            ),
          ],
        ),
      ),
    );
  }
}
