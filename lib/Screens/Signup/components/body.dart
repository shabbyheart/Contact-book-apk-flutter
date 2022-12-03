import 'package:contact_app/Components/already_have_an_account_account_check.dart';
import 'package:contact_app/Components/rounded_button.dart';
import 'package:contact_app/Components/rounded_input_field.dart';
import 'package:contact_app/Components/rounded_password_field.dart';
import 'package:contact_app/Screens/LogIn/login_screen.dart';
import 'package:contact_app/Screens/Signup/components/or_divider.dart';
import 'package:contact_app/Screens/Signup/components/social_icon.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(
              icon: Icons.mail,
              hintText: "Enter Email",
              onChanged: (String value) {  },
            ),
            RoundedPasswordField(
              onChanged: (value){},
              //icon: Icons.lock,
            ),
            RoundButton(
                text: "Sign Up",
                press: (){
                  Navigator.push(
                   context,
                      MaterialPageRoute(
                        builder: (context){
                          return const LoginScreen();
                        }
                      )
                  );
                },
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return const  LoginScreen();
                      }
                    )
                );
              },
              login: false,
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: (){},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: (){},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google.svg",
                  press: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}





