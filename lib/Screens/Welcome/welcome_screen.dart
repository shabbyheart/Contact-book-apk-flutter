import 'package:contact_app/Screens/Welcome/components/body.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "Contact App",
          style: TextStyle(color: kPrimaryLightColor),
        ),
      ),
      body: const Body(),
    );
  }
}
