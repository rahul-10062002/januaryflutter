import 'package:flutter/material.dart';
import 'package:januaryflutter/passingwithflite/passingadmin.dart';
import 'package:januaryflutter/passingwithflite/passingsqlhelp.dart';
import 'package:januaryflutter/passingwithflite/passproduct.dart';
import 'package:januaryflutter/passingwithflite/product.dart';
import 'package:januaryflutter/passingwithflite/productdetails.dart';


class loginpass extends StatefulWidget {
  @override
  State<loginpass> createState() => _loginpassState();
}

class _loginpassState extends State<loginpass> {
  GlobalKey<FormState>formkey=GlobalKey();
  final TextEditingController conemail=TextEditingController();
  final TextEditingController conpass=TextEditingController();

  void logincheck(String email,String password) async{
    if(email=='admin@gmail.com' && password=='123456'){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>passadmin1()));
    }else{
      var data=await SQLHELPER2.CheckLogin(email,password);
      if(data.isNotEmpty){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>productsheet()));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(
          "login",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(key: formkey,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child: TextFormField(
                  controller: conemail,
                  decoration: InputDecoration(
                      hintText: "emailid",
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child: TextFormField(
                  controller: conpass,
                  decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                final valid=formkey.currentState!.validate();

                if(valid){
                  logincheck(conemail.text,conpass.text);
                }else{}
              }, child: Text("login")),
              SizedBox(height: 20,),
              TextButton(
                  onPressed: () {}, child: Text("not a user sign up here...!!"))
            ],
          ),
        ),
      ),
    );
  }
}
