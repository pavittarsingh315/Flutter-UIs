import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  final Widget child;
  final Color arrowColor;
  const CustomAppBar({
    Key? key,
    required this.child,
    required this.arrowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        this.child,
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AppBar(
            leading: IconButton(
              tooltip: 'Back',
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: this.arrowColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ),
      ],
    );
  }
}
