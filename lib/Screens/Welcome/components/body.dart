import 'package:contact_app/Components/rounded_button.dart';
import 'package:contact_app/Screens/Signup/signup_screen.dart';
import 'package:contact_app/Screens/Welcome/components/background.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../LogIn/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Welcome to Contact App",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.02),
            RoundButton(
              text: "LOG IN",
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const LoginScreen();
                },));
              },
            ),
            RoundButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return const SignupScreen();
                  })
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}




