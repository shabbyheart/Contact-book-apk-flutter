import 'dart:io';
// this class for raw data pass
class ContactList{
   String? firstName;
   String? lastName;
   String? number;
   String? email;
   File? image;
  ContactList({this.firstName, this.lastName, this.number, this.email, this.image});
}

// This class for Data base
// class ContactList {
//
//
//   final String? firstName;
//   final String? lastName;
//   final String? number;
//   final String? email;
//
//   ContactList({
//     required this.firstName,
//     required this.lastName,
//     required this.number,
//     required this.email,
//   });
//
//   ContactList.fromMap(Map<dynamic , dynamic>  res)
//       :
//         firstName = res["firstName"],
//         lastName = res["lastName"],
//         number = res["number"],
//         email = res["email"];
//
//
//   Map<String, Object?> toMap(){
//     return {
//       'firstName' : firstName,
//       'lastName' : lastName,
//       'number' : number,
//       'email' : email,
//     };
//   }
// }