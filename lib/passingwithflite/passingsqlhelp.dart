

import  'package:sqflite/sqflite.dart' as sql;

class SQLHELPER2 {
  static Future<void> createTable(sql.Database db)async{
    await db.execute("""CREATE TABLE PASS (id INTEGER PRIMARY KEY  AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password TEXT)""");
}
static Future<sql.Database> Opendb() async{
    return sql.openDatabase('passuser',version: 1,onCreate: (sql.Database db,int version)async{
      await createTable(db);
    });
}

static Future<int>AddNewUser(String name,String password,String email) async{
    final db=await SQLHELPER2.Opendb();
    final data={'name':name,'email':email,'password':password};
    final  id=db.insert('pass', data);
    return id;
}

static Future<List<Map>> userFound(String uname,String eemail) async{
    final db=await SQLHELPER2.Opendb();
    final data= await db.rawQuery(
      "SELECT * FROM PASS WHERE name='$uname' AND email='$eemail'"
    );
    if(data.isNotEmpty){
      return data;
    }
    return data;
}

static Future<List<Map>>CheckLogin(String email,String password) async{
    final db=await SQLHELPER2.Opendb();
    final data=await db.rawQuery("SELECT * FROM pass WHERE email='$email' AND password='$password'");
    if(data.isNotEmpty){
      return data;
    }
    else{
      return data;
    }
}

static Future<void>Deleteuser(int id) async{
    final db= await SQLHELPER2.Opendb();
    db.delete('pass',where: 'id=?',whereArgs: [id]);
}

static Future<List<Map>> getAll() async{
    final db= await SQLHELPER2.Opendb();
    final data= await db.rawQuery("SELECT * FROM pass");
    return data;
}


}