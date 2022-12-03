import 'package:contact_app/Data/contact_list.dart';
import 'package:contact_app/Screens/ContactDetails/components/call_text_setup_icon.dart';
import 'package:contact_app/Screens/ContactDetails/components/contact_info.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  ContactList contact = ContactList();
   Body({Key? key,required this.contact}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: widget.contact.image != null ? Image.file(widget.contact.image!,
              width: size.width * 0.9,
                height: 300,
                fit: BoxFit.cover,
            ) : Image.asset(
              "assets/ContactImages/1.jpg",
              width: size.width * 0.9,
              height: 300,
              fit: BoxFit.cover,
            ),

            // child: Image.asset(
            //   "assets/ContactImages/1.jpg",
            //   width: size.width * 0.9,
            //   height: 300,
            //   fit: BoxFit.cover,
            // ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            '${widget.contact.firstName} ${widget.contact.lastName}',
            style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          CallTextSetupIcon(contact: widget.contact,),
          SizedBox(height: size.height * 0.02),
          ContactInfo(contact: widget.contact,),
        ],
      ),
    );
  }
}
