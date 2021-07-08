import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/Screens/Login/components/already_have_an_account_check.dart';
import 'package:my_app/Screens/Login/components/background.dart';
import 'package:my_app/Screens/Login/components/rounded_input_field.dart';
import 'package:my_app/Screens/Login/components/rounded_password_field.dart';
import 'package:my_app/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {
                print(value);
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                print(value);
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                print('Navigate to sign up page');
              },
            )
          ],
        ),
      ),
    );
  }
}
