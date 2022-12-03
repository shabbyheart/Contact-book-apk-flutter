import 'package:contact_app/Data/contact_list.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/Screens/ContactDetails/components/body.dart';

class ContactDetailsScreen extends StatefulWidget {
  ContactList contact = ContactList();
  ContactDetailsScreen({Key? key, required this.contact}) : super(key: key);

  @override
  State<ContactDetailsScreen> createState() => _ContactDetailsScreenState();
}

class _ContactDetailsScreenState extends State<ContactDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text('Contact Details'),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.home),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Body(contact: widget.contact,),
    );
  }
}
