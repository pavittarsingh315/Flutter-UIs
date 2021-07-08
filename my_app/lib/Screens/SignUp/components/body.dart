import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/Screens/Login/components/already_have_an_account_check.dart';
import 'package:my_app/Screens/Login/components/rounded_input_field.dart';
import 'package:my_app/Screens/Login/components/rounded_password_field.dart';
import 'package:my_app/Screens/Login/login_screen.dart';
import 'package:my_app/Screens/SignUp/components/OrDivider.dart';
import 'package:my_app/Screens/SignUp/components/SocialIcon.dart';
import 'package:my_app/Screens/SignUp/components/background.dart';
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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.mail,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              login: false,
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  onPress: () {
                    print("Clicked on Facebook");
                  },
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  onPress: () {
                    print("Clicked on Twitter");
                  },
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  onPress: () {
                    print("Clicked on Google+");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
