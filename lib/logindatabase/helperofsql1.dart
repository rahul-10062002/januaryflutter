import 'package:sqflite/sqflite.dart' as sql;

class SQLHELPER{
  static Future<sql.Database> myBase() async{
    return sql.openDatabase("MyApp.db",version: 1,
    onCreate: (sql.Database database,int version) async{
      await createTables(database);
    });
  }

  static Future<void> createTables(sql.Database database) async{
    await database.execute(
      """ CREATE TABLE login (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      name TEXT,
      email TEXT,
      password TEXT,
      createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)""");
}
/// create new user
  static Future<int>AddNewUser(String name,String email, String password) async{
    final db=await SQLHELPER.myBase();
    final data={'name':name,'email':email,'password':password};
    final id=db.insert('login', data);
    return id;
  }

  static Future<List<Map>> userFound(String eemail) async{
    final db=await SQLHELPER.myBase();
    final data=await db.rawQuery(
      "SELECT * FROM login WHERE email='$eemail'"
    );
    if(data.isEmpty){
      return data;
    }
    return data;
  }

  static Future<List<Map>>CheckLogin(String email,String password) async{
    final db=await SQLHELPER.myBase();
    final data=await db.rawQuery("SELECT * FROM login WHERE email='$email' AND password='$password' ");
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }

  static Future<void>Deleteuser(int id) async  {
    final db=await SQLHELPER.myBase();
    db.delete('login',where: 'id=?',whereArgs: [id]);
  }

  static Future<List<Map>> getAll() async {
    final db=await SQLHELPER.myBase();
    final data=db.rawQuery("SELECT * FROM login");
    return data;
  }

}