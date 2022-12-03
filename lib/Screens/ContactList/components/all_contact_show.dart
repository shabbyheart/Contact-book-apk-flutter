import 'package:contact_app/Screens/ContactDetails/contact_details_screen.dart';
import 'package:contact_app/Data/contact_list.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AllContactShow extends StatefulWidget {
  //final VoidCallback press;
  final List<ContactList> contacts;
  //String str;
  const AllContactShow({
    Key? key,
    required this.contacts,
  }) : super(key: key);
  @override
  State<AllContactShow> createState() => _AllContactShowState();
}

class _AllContactShowState extends State<AllContactShow> {


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: widget.contacts.length,
      itemBuilder: (context, index){
        return Card(
          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ContactDetailsScreen(contact: widget.contacts[index],);
              }));
            },
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: kPrimaryColor,
              child: CircleAvatar(
                radius: 22.0,
                backgroundImage: (widget.contacts[index].image != null) ? FileImage(widget.contacts[index].image!) as ImageProvider : const AssetImage('assets/ContactImages/1.jpg'),
              ),
            ),
            title:   Text('${widget.contacts[index].firstName??"Name"} ${widget.contacts[index].lastName??"Name"}'),
            subtitle:  Text('${widget.contacts[index].number}'),
            trailing:  GestureDetector(
                behavior: HitTestBehavior.deferToChild,
                onTap: () async{
                  String phoneNumber = "tel:${widget.contacts[index].number}";
                  if(await canLaunch(phoneNumber)){
                    await launch(phoneNumber);
                  }else{
                    debugPrint("Not have an app");
                  }
                },
                child: const Icon(Icons.call, color: kPrimaryColor)
            ),
          ),
        );
      }
    );
  }
}