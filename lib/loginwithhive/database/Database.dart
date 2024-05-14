import 'package:hive/hive.dart';
import 'package:januaryflutter/loginwithhive/model/usermodel.dart';

class DBFunction{
  DBFunction.internal();
  //if the class have one object we can called instance
  static DBFunction instance=DBFunction.internal();

  factory DBFunction(){ // factory constructor single object instance ayitulath
    return instance;
  }

  Future<void>userSignUp(User user) async{
    final db=await Hive.openBox<User>('users');
    db.put(user.id, user);
  }

  Future<List<User>>getUser() async{
    final db=await Hive.openBox<User>('users');
    return db.values.toList();
  }
}