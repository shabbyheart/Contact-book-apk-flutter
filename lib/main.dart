import 'package:contact_app/DataBase/contact_provider.dart';
import 'package:contact_app/Screens/ContactList/contact_list_screen.dart';
import 'package:contact_app/Screens/Welcome/welcome_screen.dart';
import 'package:contact_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContactProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact App',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const WelcomeScreen(),
        routes:{
          //'/': (context) => WelcomeScreen(),
          '/contactList': (context) => const ContactListScreen(),
          //'/contactDetails': (context) => ContactDetailsScreen(),
        }
        ,
      ),
    );
  }
}

