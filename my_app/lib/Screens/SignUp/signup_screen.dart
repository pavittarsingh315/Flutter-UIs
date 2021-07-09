import 'package:flutter/material.dart';
import 'package:my_app/Screens/SignUp/components/body.dart';
import 'package:my_app/components/custom_appbar.dart';
import 'package:my_app/constants.dart';

class SignUpScreen extends StatelessWidget {
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
