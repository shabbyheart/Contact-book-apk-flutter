import 'package:contact_app/Screens/LogIn/Components/body.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "LOG IN",
          style: TextStyle(color: kPrimaryLightColor),
        ),
      ),
      body: const Body(),
    );
  }
}


