import 'package:contact_app/Data/contact_list.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallTextSetupIcon extends StatefulWidget {
  ContactList contact = ContactList();
  CallTextSetupIcon({Key? key,required this.contact}) : super(key: key);

  @override
  State<CallTextSetupIcon> createState() => _CallTextSetupIconState();
}

class _CallTextSetupIconState extends State<CallTextSetupIcon> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Divider(
          color: Colors.red,
          height: 1.5,
        ),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async{
                    String phoneNumber = "tel:${widget.contact.number}";
                    if(await canLaunch(phoneNumber)){
                      await launch(phoneNumber);
                    }else{
                      debugPrint("Not have an app");
                    }
                  },
                  icon: Icon(Icons.call, color: kPrimaryColor, size: size.height * 0.05,),
                ),
              //  Icon(Icons.call, color: kPrimaryColor, size: size.height * 0.05,),
                Text(
                  "Call",
                  style: TextStyle(fontSize: size.height * 0.02,color: kPrimaryColor),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async{
                    String phoneNumber = "sms:${widget.contact.number}";
                    if(await canLaunch(phoneNumber)){
                      await launch(phoneNumber);
                    }else{
                      debugPrint("Not have an app");
                    }
                  },
                  icon: Icon(Icons.message, color: kPrimaryColor, size: size.height * 0.05,),
                ),
                //Icon(Icons.message, color: kPrimaryColor, size: size.height * 0.05,),
                Text(
                  "Text",
                  style: TextStyle(fontSize: size.height * 0.02,color: kPrimaryColor),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.video_camera_front, color: kPrimaryColor, size: size.height * 0.05,),
                Text(
                  "Set up",
                  style: TextStyle(fontSize: size.height * 0.02,color: kPrimaryColor),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        const Divider(
          color: Colors.red,
          height: 1.5,
        ),
      ],
    );
  }
}
