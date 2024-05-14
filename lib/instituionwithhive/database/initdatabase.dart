
import 'package:hive/hive.dart';
import 'package:januaryflutter/instituionwithhive/model/usermodel.dart';

class DBFunction{
  DBFunction.internal();
  static DBFunction instance=DBFunction.internal();

  factory DBFunction(){
    return instance;
  }

  Future<void>userSignUp(Init user) async{
    final db=await Hive.openBox<Init>('users');
    db.put(user.id, user);
  }

  Future<List<Init>>getUser() async{
    final db=await Hive.openBox<Init>('users');
    return db.values.toList();
  }

}