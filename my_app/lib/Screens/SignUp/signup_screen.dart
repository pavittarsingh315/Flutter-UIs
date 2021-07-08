import 'package:flutter/material.dart';
import 'package:my_app/Screens/SignUp/components/body.dart';
import 'package:my_app/components/custom_appbar.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        child: Body(),
      ),
    );
  }
}
