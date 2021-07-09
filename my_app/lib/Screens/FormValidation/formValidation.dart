import 'package:flutter/material.dart';
import 'package:my_app/Screens/FormValidation/components/validatedForm.dart';
import 'package:my_app/components/custom_appbar.dart';

class FormBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomAppBar(
        arrowColor: Colors.red,
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: ValidatedForm(),
            ),
          ),
        ),
      ),
    );
  }
}
