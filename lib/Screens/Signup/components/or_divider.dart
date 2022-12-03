import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: const [
          Expanded(
              child: Divider(
                color: Colors.red,
                height: 1.5,
              )
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            //padding: EdgeInsets.all(8.0),
            child: Text(
                "OR",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                )
            ),
          ),
          Expanded(
              child: Divider(
                color: Colors.red,
                height: 1.5,
              )
          ),
        ],
      ),
    );
  }
}