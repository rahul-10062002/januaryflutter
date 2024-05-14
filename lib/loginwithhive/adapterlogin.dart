import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:januaryflutter/loginwithhive/database/Database.dart';
import 'package:januaryflutter/loginwithhive/model/usermodel.dart';

import '../hiveadaptor/adsapsign.dart';
import 'model/adapterhome.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.openBox('user');
  runApp(GetMaterialApp(home: loginhiveeg(),));
}
class loginhiveeg extends StatefulWidget {
  @override
  State<loginhiveeg> createState() => _loginhiveegState();
}

class _loginhiveegState extends State<loginhiveeg> {
  bool showpass=true;
  GlobalKey<FormState>formkey=GlobalKey();
  var coemail=TextEditingController();
  var pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login page"),
        centerTitle: true,
      ),
      body: Form(key: formkey,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextFormField(
                controller: coemail,
                decoration: InputDecoration(
                    hintText: "email",
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: pass,
                  decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()  async {
                final userList=await DBFunction.instance.getUser();
                findUser(userList);
              }, child: Text("login")),
              TextButton(onPressed: (){
              Get.to(signeg());
              }, child: Text("sign up here"))
            ],
          ),
        ),
      ),
    );
  }

Future<void> findUser(List<User> userList) async {
    final email=coemail.text.trim();
    final password=pass.text.trim();
    bool userFound=false;
    final validate=await validateLogin(email,password);

    if(validate==true){
      await Future.forEach(userList, (user){
        if(user.email==email && user.password==password){
          userFound=true;
        }else{
          userFound=false;
        }
      });
      if(userFound==true){
        Get.offAll(()=>Homee(email: 'email'));
        Get.snackbar("success","login success",backgroundColor: Colors.green);
      }else{
        Get.snackbar("error", "incorrect email/password");
      }
    }
  }

Future<bool> validateLogin(String email, String password) async {
    if(email!='' && password!=''){
      return true;
    }else{
      Get.snackbar("error", "fields canot be empty");
      return false;
    }
}
}
