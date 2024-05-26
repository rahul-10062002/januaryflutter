import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:januaryflutter/mini%20project/tabmini.dart';

import '../loginwithhive/model/usermodel.dart';
import 'mainmini.dart';
import 'minifire.dart';
import 'minihome.dart';
import 'minisignup.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('tasknews');
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDUq4N6IZaGTFgjt5SozF_nsCAo8-tQPZ4",
          appId: "1:686520160862:android:78cc6be1d503df03fd5acf",
          messagingSenderId: "",
          projectId: "minifire-6f86d"));
  var user=FirebaseAuth.instance.currentUser;
  runApp(GetMaterialApp(home:user==null ? loginmini():homemini()));
}
class loginmini extends StatefulWidget{
  @override
  State<loginmini> createState() => _loginminiState();
}

class _loginminiState extends State<loginmini> {
  String ? loemail;
  String ? lopaas;
  GlobalKey<FormState>formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Form(key: formkey,
      child: Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,
                boxShadow:[BoxShadow(color: Colors.grey,spreadRadius: 5,blurRadius: 7,offset: Offset(0,3))] ),
            height: 500,
            width: 450,
            child: Column(
              children: [
                SizedBox(height: 40,),
                Center(
                  child: Text("News app",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "email",
                          labelText: "email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      validator: (email) {
                        if (email!.isEmpty ) {
                          return " enter valid email";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (eemail) {
                        loemail = eemail;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      validator: (password) {
                        if (password!.isEmpty || password!.length < 6) {
                          return " enter valid password";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (pwd) {
                        lopaas = pwd;
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                            FireHelper1()
                                .signIn(mail: loemail!, pass: lopaas!)
                                .then((value) {
                              if (value == null) {
                                Get.to(mainnews());
                              } else {
                                Get.snackbar("error", "user not found $value");
                              }
                            });
                          }
                        },
                        child: Text("login")),
                    TextButton(
                        onPressed: () {
                          Get.to(signmini());
                        },
                        child: Text("not have an account ??? sign up here"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
  }
}