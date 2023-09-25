import 'package:flutter/material.dart';
import 'package:i_am_rich/common/appbar.dart';
import 'package:i_am_rich/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.lightGreen, // Change this to your desired color
        ),
      home: HomePage()
    );
  }
}
