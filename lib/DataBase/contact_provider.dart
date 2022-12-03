
import 'package:contact_app/Data/contact_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'db_helper.dart';

class ContactProvider with ChangeNotifier{

  DBHelper db = DBHelper() ;
  // int _counter = 0 ;
  // int get counter => _counter;

  // double _totalPrice = 0.0 ;
  // double get totalPrice => _totalPrice;

  late Future<List<ContactList>> _contacts ;
  Future<List<ContactList>> get contacts => _contacts ;

  Future<List<ContactList>> getData () async {
    //_contacts = db.getContactList();
    print("this value from getContactList ----> ${_contacts.toString()}");
    return _contacts ;
  }


  // void _setPrefItems()async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance() ;
  //   prefs.setInt('cart_item', _counter);
  //   prefs.setDouble('total_price', _totalPrice);
  //   notifyListeners();
  // }

  // void _getPrefItems()async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance() ;
  //   _counter = prefs.getInt('cart_item') ?? 0;
  //   _totalPrice = prefs.getDouble('total_price') ?? 0.0;
  //   notifyListeners();
  // }


  // void addTotalPrice (double productPrice){
  //   _totalPrice = _totalPrice +productPrice ;
  //   _setPrefItems();
  //   notifyListeners();
  // }
  //
  // void removeTotalPrice (double productPrice){
  //   _totalPrice = _totalPrice  - productPrice ;
  //   _setPrefItems();
  //   notifyListeners();
  // }
  //
  // double getTotalPrice (){
  //   _getPrefItems();
  //   return  _totalPrice ;
  // }
  //
  //
  // void addCounter (){
  //   _counter++;
  //   _setPrefItems();
  //   notifyListeners();
  // }
  //
  // void removerCounter (){
  //   _counter--;
  //   _setPrefItems();
  //   notifyListeners();
  // }
  //
  // int getCounter (){
  //   _getPrefItems();
  //   return  _counter ;
  //
  // }
}