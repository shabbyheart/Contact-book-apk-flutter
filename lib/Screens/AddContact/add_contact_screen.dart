import 'package:contact_app/Screens/AddContact/components/body.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';

class AddContactScreen extends StatefulWidget {
  //String str;
  const AddContactScreen({Key? key,}) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Add contact"),
      ),
      body: const Body(),
    );
  }
}
