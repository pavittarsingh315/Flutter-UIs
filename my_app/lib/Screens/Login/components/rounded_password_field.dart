import 'package:flutter/material.dart';
import 'package:my_app/Screens/Login/components/text_field_container.dart';
import 'package:my_app/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: this.widget.onChanged,
        obscureText: this.hidden,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            splashColor: Colors.transparent,
            icon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            onPressed: () {
              setState(() {
                hidden = !hidden;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
