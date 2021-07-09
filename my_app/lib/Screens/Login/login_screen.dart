import 'package:flutter/material.dart';
import 'package:my_app/Screens/Login/components/body.dart';
import 'package:my_app/components/custom_appbar.dart';
import 'package:my_app/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        arrowColor: kPrimaryColor,
        child: Body(),
      ),
    );
  }
}
