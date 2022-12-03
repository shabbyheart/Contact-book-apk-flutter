import 'package:contact_app/Screens/LogIn/Components/text_field_container.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          obscureText: true,
          onChanged: onChanged,
          decoration: const InputDecoration(
            hintText: "passowrd",
            icon: Icon(Icons.lock, color: kPrimaryColor,),
            suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
            border: InputBorder.none,
          ),
        )
    );
  }
}