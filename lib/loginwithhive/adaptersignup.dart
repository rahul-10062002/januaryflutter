import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:januaryflutter/loginwithhive/database/Database.dart';

import 'model/usermodel.dart';


class signeg extends StatefulWidget {
  @override
  State<signeg> createState() => _signegState();
}

class _signegState extends State<signeg> {
  bool showpass=true;
  GlobalKey<FormState>formkey=GlobalKey();
  var coname=TextEditingController();
  var coemail=TextEditingController();
  var pass=TextEditingController();
  var copass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign up"),
        centerTitle: true,
      ),
      body: Form(key: formkey,
        child: Container(
          child: Column(
            children: [
              TextFormField(
                controller: coname,
                decoration: InputDecoration(
                    hintText: "name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
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
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(height: 30,),
              TextFormField(
                  controller: copass,
                  decoration: InputDecoration(
                      hintText: "confirm password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () {
               validatesignup();
              }, child: Text("sing up"))
            ],
          ),
        ),
      ),
    );
  }

  void validatesignup() async {
    final email=coemail.text.trim(); //white space ozhivakan trim use cheyunath only value mathram edukum
    final vpass=pass.text.trim();
    final vconpass=copass.text.trim();

    final emailvalidationResult=EmailValidator.validate(email);
    if(email!="" && vpass!="" && vconpass!=""){
      if(emailvalidationResult==true){
        final passValidationResult=checkpassword(vpass,vconpass);
        if(passValidationResult==true){
          final user=User(email:email,password:vpass);

          await DBFunction.instance.userSignUp(user);
          Get.back();
          Get.snackbar("success","account created");
        }
      }else{
        Get.snackbar("error", "provide a valid email");
      }
    }else{
        Get.snackbar("error", "fields can not be empty");
    }

  }

  bool checkpassword(String vpass, String vconpass) {
    if(vpass==vconpass){
      if(vpass.length<6){
        Get.snackbar("error","password length should be >6");
        return false;
      }else{
        return true;
      }
    }else{
      Get.snackbar("error", "password mismatch");
      return false;
    }
  }
}
