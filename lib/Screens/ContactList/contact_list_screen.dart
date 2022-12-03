import 'dart:io';

import 'package:contact_app/Screens/AddContact/add_contact_screen.dart';
import 'package:contact_app/Screens/ContactList/components/all_contact_show.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

import '../../Data/contact_list.dart';


class ContactListScreen extends StatefulWidget {

  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? mail;
  final File? image;
  const ContactListScreen({Key? key, this.firstName,this.lastName, this.phone, this.mail,this.image,}) : super(key: key);

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<ContactList> contacts = <ContactList>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.firstName != null && widget.lastName != null && widget.phone!= null && widget.mail!= null){
      contacts.add( ContactList(
          firstName: widget.firstName,
          lastName: widget.lastName,
          number: widget.phone,
          email:widget.mail,
          image: widget.image,
      ));
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "Contact List",
          style: TextStyle(color: kPrimaryLightColor),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //setState(() {});
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const AddContactScreen();
          }));
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add),
      ),
      body: AllContactShow(contacts: contacts,),
    );
  }
}
