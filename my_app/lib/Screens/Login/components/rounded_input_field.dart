import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/Screens/Login/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: this.onChanged,
        decoration: InputDecoration(
          icon: Icon(
            this.icon,
            color: kPrimaryColor,
          ),
          hintText: this.hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
