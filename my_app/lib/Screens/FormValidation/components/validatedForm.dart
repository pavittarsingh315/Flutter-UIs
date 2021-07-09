import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ValidatedForm extends StatefulWidget {
  @override
  _ValidatedFormState createState() => _ValidatedFormState();
}

class _ValidatedFormState extends State<ValidatedForm> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController1 = TextEditingController();
  final passwordController2 = TextEditingController();

  // This function is redundant cause we are already autovalidating but if we weren't, then
  // the validation of the form would be triggered here when the login btn is pressed.
  void submitForm() {
    if (formKey.currentState!.validate()) {
      print('Validated');
    }
  }

  String? validatePassword1(value) {
    if (value!.isEmpty) {
      return "Password is required";
    }
    return null;
  }

  String? validatePassword2(value) {
    if (passwordController1.text != value.toString()) {
      return "Passwords do not match";
    } else if (value.toString().isEmpty) {
      return "Password confirmation is required.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            // Validating email field with a package
            validator: MultiValidator(
              [
                EmailValidator(errorText: "Not a valid email."),
                RequiredValidator(errorText: "Email is required.")
              ],
            ),
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              hintText: "joe@mama.com",
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          TextFormField(
            controller: passwordController1,
            validator: validatePassword1,
            obscureText: true,
            enableSuggestions: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          TextFormField(
            controller: passwordController2,
            validator: validatePassword2,
            obscureText: true,
            enableSuggestions: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Confirm Password",
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          ElevatedButton(
            onPressed: submitForm,
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
