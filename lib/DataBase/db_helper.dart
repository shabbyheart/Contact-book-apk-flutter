import 'package:contact_app/Data/contact_list.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
class DBHelper {

  static Database? _db ;

  Future<Database?> get db async {
    print(" db db db db dbdb db dbdbdbv vdb db db ");
    // if(_db != null){
    //   print('Database created dddddddddddddddddddd');
    //   return _db!;
    // }

    _db = await initDatabase();
  }

  // initDatabase()async{
  //   print("initDatabase iiiiiiiiiiiiiiiiiiiii");
  //   io.Directory documentDirectory = await getApplicationDocumentsDirectory() ;
  //   String path = join(documentDirectory.path , 'contact.db');
  //
  //   var db = await openDatabase(path , version: 2 , onCreate: _onCreate,);
  //   print("ON CREate ${db.toString()} ");
  //   return db ;
  // }
  //
  // _onCreate (Database db , int version )async{
  //   print("Hello test after klasdflkas");
  //   await db
  //       .execute('CREATE TABLE contacttb (id INTEGER PRIMARY KEY ,firstName TEXT,lastName TEXT, number TEXT , email TEXT ) ');
  //   print("Query execute successfully");
  //   //.execute('CREATE TABLE cart (id INTEGER PRIMARY KEY , productId VARCHAR UNIQUE,productName TEXT,initialPrice INTEGER, productPrice INTEGER , quantity INTEGER, unitTag TEXT , image TEXT )');
  // }
  initDatabase()async{
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath,'contact.db');
    
    try{
      Database database = await openDatabase(path, version:1, onCreate: (Database db, int version)async{
        await db.execute(
            'CREATE TABLE contact (id INTEGER PRIMARY KEY, firstName TEXT, lastName TEXT, number TEXT,email TEXT)');
      });
      print("DATABAse ${database.toString()}");
    }
    catch(e){
      print("Error occurrrrrr rrrrrrrrr ${e}");
    }

  }

  // Future<ContactList> insert(ContactList contact)async{
  //   print("Our Insetttttttttttttttttttt${contact.toMap()}");
  //   var dbClient = await db ;
  //   print(" after db dbbbbbbbbbbbbbbbbbbbbbbbbb");
  //   await dbClient!.insert('contact', contact.toMap());
  //   print(" after dbClient TTTTTTTTTTT");
  //   return contact ;
  // }

  // Future<List<ContactList>> getContactList()async{
  //   var dbClient = await db ;
  //   final List<Map<String , Object?>> queryResult =  await dbClient!.query('contact');
  //   return queryResult.map((e) => ContactList.fromMap(e)).toList();
  //
  // }

  // Future<int> delete(int id)async{
  //   var dbClient = await db ;
  //   return await dbClient!.delete(
  //       'cart',
  //       where: 'id = ?',
  //       whereArgs: [id]
  //   );
  // }

  // Future<int> updateQuantity(Cart cart)async{
  //   var dbClient = await db ;
  //   return await dbClient!.update(
  //       'cart',
  //       cart.toMap(),
  //       where: 'id = ?',
  //       whereArgs: [cart.id]
  //   );
  // }
}