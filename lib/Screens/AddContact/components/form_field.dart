
import 'package:contact_app/DataBase/db_helper.dart';

import 'package:contact_app/Screens/ContactList/contact_list_screen.dart';
import 'package:contact_app/constants.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';


class FormFields extends StatefulWidget {
  final dynamic image;
  const FormFields({Key? key, required this.image}) : super(key: key);
  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
   String firstName = "";
   String lastName = "";
   String phone = "";
   String mail = "";
  final _formKey = GlobalKey<FormState>();



   DBHelper? dbHelper = DBHelper();
  @override
  Widget build(BuildContext context) {

    //final contacts  = Provider.of<ContactProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      //autovalidateMode: AutovalidateMode.onUserInteraction,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person, color: kPrimaryColor,),
              labelText: "First Name",
              border: OutlineInputBorder(),
              //fillColor: kPrimaryColor,

            ),
            validator: (value) {
              /// value == null || value.isEmpty insted of we can use --> value!.isEmpty,
              if (value == null || value.isEmpty || !RegExp(r'[a-z A-Z]').hasMatch(value)) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (value) => setState(()=> firstName = value!),
          ),
          SizedBox(height: size.height * 0.02,),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: "Last Name",
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || !RegExp(r'[a-z A-Z]').hasMatch(value)) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (value) => setState(()=> lastName = value!),
          ),
          SizedBox(height: size.height * 0.02,),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: "Phone",
              border: OutlineInputBorder(),
            ),
            validator: (value){
              if(value == null || value.isEmpty || !RegExp(r'^(?:\+88|88)?(01[3-9]\d{8})$').hasMatch(value) ){
                return "Enter correct phone number with +880 or 88";
              }
              return null;
            },
            onSaved: (value) => setState(()=> phone = value!),
          ),
          SizedBox(height: size.height * 0.02,),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail),
              labelText: "Mail",
              border: OutlineInputBorder(),
            ),
            validator: (email) =>  email != null && !EmailValidator.validate(email) ? "Enter a valid email" : null,
            onSaved: (value) => setState(()=> mail = value!),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: kPrimaryColor, // foreground
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  _formKey.currentState?.save();
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //    SnackBar(content: Text(firstName)),
                  // );
                  //Navigator.pushReplacementNamed(context, routeName, ar)

                  //print("firstName");
                  // Navigator.pushReplacementNamed(context, '/contactList',arguments: {
                  //   'firstName' : firstName,
                  //   'lastName' : lastName,
                  //   'phone' : phone,
                  //   'mail': mail,
                  //   'image': widget.image,
                  // });

                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                    return ContactListScreen(firstName: firstName,lastName: lastName,phone: phone,mail: mail,image: widget.image,);
                  }), (route) => false);


                  //Data send into Database
                  /*dbHelper!.insert(
                      ContactList(
                          firstName: "firstName.toString()",
                          lastName: "lastName.toString()",
                          number: "phone.toString()",
                          email: "mail.toString()")
                  ).then((value){
                    Fluttertoast.showToast(msg: "Data Added Successful");
                  }).onError((error, stackTrace){
                    print("error"+error.toString());
                    Fluttertoast.showToast(msg: "error + ${error.toString()}");
                  });*/
                }
                //print("firstName");
              },
              child:  const Text('Submit'),
            ),
          ),
        ],

      ),
    );
  }
}
