import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Homepage!",
          style:const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.blue[700],
    );
  }
}