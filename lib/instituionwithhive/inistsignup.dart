import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:januaryflutter/instituionwithhive/model/usermodel.dart';

import '../loginwithhive/database/Database.dart';

class signinit extends StatefulWidget {
  @override
  State<signinit> createState() => _signinitState();
}

class _signinitState extends State<signinit> {
  GlobalKey<FormState>formkey=GlobalKey();
  var coname=TextEditingController();
  var coemail=TextEditingController();
  var pass=TextEditingController();
  var copass=TextEditingController();
  var scourse=TextEditingController();
  var sgrad=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign up "),
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
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: coemail,
                decoration: InputDecoration(
                    hintText: "email",
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 30,
              ),
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
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  controller: copass,
                  decoration: InputDecoration(
                      hintText: "confirm password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: scourse,
                decoration: InputDecoration(
                    hintText: "course",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              TextFormField(
                controller: sgrad,
                decoration: InputDecoration(
                    hintText: "graduation",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
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
    final vemail=coemail.text.trim();
    final vpass=pass.text.trim();
    final vname=coname.text.trim();
    final vcpass=copass.text.trim();
    final vcourse=scourse.text.trim();
    final vgrad=sgrad.text.trim();


    final emailvalidationResult=EmailValidator.validate(vemail);
    if(vemail!="" && vpass!="" && vcpass!=""){
      if(emailvalidationResult==true){
        final passValidationResult=checkpassword(vpass,vcpass);
        if(passValidationResult==true){
          final user=Init(name: vname, email: vemail, password: vpass, course: vcourse, graduation: vgrad);

          await DBFunction.instance.userSignUp(User);
          Get.back();
          Get.snackbar("success", "account created");
        }
      }else{
        Get.snackbar("error", "provide a valid email");
      }
    }else{
      Get.snackbar("error", "fields can not be empty");
    }

  }

 bool checkpassword(String vpass, String vcpass) {
    if(vpass==vcpass){
      if(vpass.length<6){
        Get.snackbar("error","password length should be greater than 6");
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
