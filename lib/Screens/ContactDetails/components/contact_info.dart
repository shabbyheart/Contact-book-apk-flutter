import 'package:contact_app/Data/contact_list.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  ContactList contact = ContactList();
  ContactInfo({Key? key, required this.contact}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: size.width * 0.8,
      decoration: const BoxDecoration(
        color: kPrimaryLightColor,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Contact Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
          SizedBox(height:  size.height * 0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.call, size: size.height * 0.04,),
              Text("   ${widget.contact.number}", style: const TextStyle( fontSize: 15,))
            ],
          ),
          SizedBox(height:  size.height * 0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.mail, size: size.height * 0.04,),
              Text("  ${widget.contact.email}", style: const TextStyle( fontSize: 15,))
            ],
          )
        ],
      ),
    );
  }
}
