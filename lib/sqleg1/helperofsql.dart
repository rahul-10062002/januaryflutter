import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLhelper {

  static Future<sql.Database> myData() async {
    return sql.openDatabase("myNotes.db", version: 1,   // DATABASE UNDAKAN
        onCreate: (sql.Database database, int version) async {
          await createTables(database);   //TABLE NAME
        });
  }

  static Future<void> createTables(sql.Database database) async {
    await database.execute(     //TABLE UNDAKAN
        """ CREATE TABLE notes (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        note TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)""");
  }
  static Future<int> createNote(String title,String note) async{
    final db=await SQLhelper.myData();
    final data={'title':title,'note':note};       ///value add akan
    final id=await db.insert("notes", data,conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  ///read all data from table
  static Future<List<Map<String,dynamic>>> readNotes() async {
    final db=await SQLhelper.myData();  ///to open database
    return db.query('notes',orderBy: 'id'); ///to view full list
  }

  ///for update a note
  static Future<int> updateNote(int id, String titlenew, String notenew) async{
    final db=await  SQLhelper.myData();

    final newdata={
      'title':titlenew,
      'note':notenew,
      'createdAt':DateTime.now().toString()

  };
    final result= await db.update('note', newdata,where: "id=?",whereArgs: [id]);
    return result;
  }

  ///delete
  static Future<void>deleteNote(int id) async {
    final db= await SQLhelper.myData();
    try{
      await db.delete("notes",where: "id=?",whereArgs: [id]);
    }catch(err){
      debugPrint("something went wrong");
    }
  }


}