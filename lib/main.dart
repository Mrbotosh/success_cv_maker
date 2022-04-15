import 'package:flutter/material.dart';
import 'package:success_cv_maker/screens/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      child: SvgPicture.asset(
        'assets/image/success.svg',
      ),
    );
  }
}
