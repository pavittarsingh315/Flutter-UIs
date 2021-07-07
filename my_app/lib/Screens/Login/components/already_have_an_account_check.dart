import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          this.login ? "Don't have an Account? " : "Already have an Account? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: this.press,
          child: Text(
            this.login ? "Sign Up" : "Login",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
