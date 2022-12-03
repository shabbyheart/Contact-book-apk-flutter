
import 'package:contact_app/Screens/AddContact/components/form_field.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<File> lf = <File>[];
  bool isFile = false;
  File? fileImage;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(fileImage == null) imagePicker(),
            if(fileImage != null) imagePicker(),
            const  Text("Add Photo", style: TextStyle(fontSize: 20,),),
            FormFields(image: fileImage,),
          ],
        ),
      ),
    );
  }

Widget imagePicker() {
  return InkWell(
      onTap: ()async{
        final picker = ImagePicker();
        final pickedFile = await picker.pickImage(source: ImageSource.gallery);
        if(pickedFile == null){
          return;
        }
          File? file = File(pickedFile.path);
          setState(() {
            fileImage = file;
          });
          lf.add(fileImage!);

        //}
        },
      child: fileImage == null? Container(
          margin: const  EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(40.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kPrimaryColor,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.add_a_photo, size: 70, color: kPrimaryColor,),
        ):
        CircleAvatar(
          backgroundImage: FileImage(lf[0]),
          radius: 100,
      ),
    );
  }
}



