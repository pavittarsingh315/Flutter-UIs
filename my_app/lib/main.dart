import 'package:flutter/material.dart';
import 'package:my_app/Screens/Welcome/welcome_screen.dart';
import 'package:my_app/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
