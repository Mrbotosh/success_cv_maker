import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Homepage!",
          style:  TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
