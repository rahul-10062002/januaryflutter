import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:januaryflutter/instituionwithhive/homeofinit.dart';

import 'model/usermodel.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter;
 Hive.registerAdapter(InitAdapter());
 Hive.openBox('init');
 runApp(GetMaterialApp(home: logininit(),));
}
class logininit extends StatefulWidget{
  @override
  State<logininit> createState() => _logininitState();
}

class _logininitState extends State<logininit> {
  final loemail=TextEditingController();
  final lopass=TextEditingController();
  @override
  Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text("login"),centerTitle: true,),
   body: Container(
     child: Column(
       children: [
         SizedBox(height: 30,),
         TextFormField(
           controller: loemail,
           decoration: InputDecoration(
               hintText: "email",
               prefixIcon: Icon(Icons.email),
               suffixIcon: Icon(Icons.visibility),
               border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20))),
         ),
         SizedBox(height: 30,),
         TextFormField(
             controller: lopass,
             decoration: InputDecoration(
                 hintText: "password",
                 prefixIcon: Icon(Icons.password),
                 suffixIcon: Icon(Icons.visibility),
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20)))),
         SizedBox(height: 30,),
         ElevatedButton(onPressed: ()  async {

         }, child: Text("login")),
         TextButton(onPressed: (){

         }, child: Text("sign up here"))
       ],
     ),
   ),
 );
  }

  Future<void> findUser(List<Init> userList) async {
    final email=loemail.text.trim();
    final password=lopass.text.trim();
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
        Get.offAll(()=>inithome(email: 'email', name: 'name', course: 'course', graduation: 'graduation'));
        Get.snackbar("success", "login success");
      }
    }
  }

 Future<bool>  validateLogin(String email, String password) async {
    if(email!='' && password!=''){
      return true;
    }else{
      Get.snackbar("error", "fields can not be empty");
      return false;
    }
 }
}