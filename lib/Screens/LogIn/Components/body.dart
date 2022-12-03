import 'package:contact_app/Components/already_have_an_account_account_check.dart';
import 'package:contact_app/Components/rounded_button.dart';
import 'package:contact_app/Components/rounded_input_field.dart';
import 'package:contact_app/Components/rounded_password_field.dart';
import 'package:contact_app/Screens/ContactList/contact_list_screen.dart';
import 'package:contact_app/Screens/LogIn/Components/background.dart';
import 'package:contact_app/Screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "LogIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height*0.35,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(
              hintText: "Enter Mail",
              onChanged: (value){
                // if(value == "om"){
                //   showDialog<void>(
                //       context: context,
                //       builder: (BuildContext context){
                //         return AlertDialog(
                //           title: const Text("That is Nice"),
                //         );
                //   });
                // }
              },
              icon: Icons.email,
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundButton(
              text: "Login",
              press: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return const ContactListScreen();
                }), (route)=>false);
              },
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context){
                        return const SignupScreen();
                      }
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}










