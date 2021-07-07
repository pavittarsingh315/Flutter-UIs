import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(this.color),
            foregroundColor: MaterialStateProperty.all<Color>(this.textColor),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
          ),
          onPressed: this.press,
          child: Text(this.text),
        ),
      ),
    );
  }
}
