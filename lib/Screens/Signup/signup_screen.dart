import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "SIGN UP",
          style: TextStyle(color: kPrimaryLightColor),
        ),
      ),
      body: Body(),
    );
  }
}


