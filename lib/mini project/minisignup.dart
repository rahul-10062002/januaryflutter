import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:januaryflutter/mini%20project/minifire.dart';


import 'minilogin1.dart';

class signmini extends StatefulWidget {
  @override
  State<signmini> createState() => _signminiState();
}

class _signminiState extends State<signmini> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass = true;
  bool showpass1=true;
  String ? miname;
  String ? miemail;
  String ? mipass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "sign up",
          style: GoogleFonts.aclonica(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 50,
            fontWeight: FontWeight.w100,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(key: formkey,
        child: Container(
          color: Colors.yellow,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 30),
                child: Container(
                  height: 400,
                  width: 350,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "name",
                            labelText: "name",
                            prefixIcon: Icon(Icons.person),
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        validator: (name){
                          if(name!.isEmpty){
                            return "name field cannot be blank";
                          }
                          else{
                            return null;
                          }
                        },
                        onSaved: (sname){
                          miname=sname;
                        },
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        obscuringCharacter: '*',
                          obscureText: showpass,
                          decoration: InputDecoration(
                              hintText: "email",
                              labelText: "email",
                              prefixIcon: Icon(Icons.email),
                              suffixIcon: IconButton(onPressed: () {
                                setState(() {
                                  if(showpass==true){
                                    showpass=false;
                                  }
                                  else{
                                    showpass=true;
                                  }
                                });
                              }, icon: Icon(showpass==true ? Icons.visibility_off: Icons.visibility),),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        validator: (email){
                          if(email!.isEmpty ){
                            return "plaese enter valid email";
                          }
                          else{
                            return null;
                          }
                        },
                        onSaved: (eemail){
                          miemail=eemail;
                        },
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                          obscuringCharacter: '*',
                          obscureText: showpass1,
                          decoration: InputDecoration(
                              hintText: "password",
                              labelText: "password",
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(onPressed: () {
                                setState(() {
                                  if(showpass1==true){
                                    showpass1=false;
                                  }
                                  else{
                                    showpass1=true;
                                  }
                                });
                              }, icon: Icon(showpass1==true ? Icons.visibility_off: Icons.visibility),),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        validator: (password){
                            if(password!.isEmpty || password!.length<6){
                              return "please enter valid password";
                            }
                            else{
                              return null;
                            }
                        },
                        onSaved: (pwd){
                            mipass=pwd;
                        },
                      ),
                      SizedBox(height: 40,),
                      ElevatedButton(onPressed: () {
                        if(formkey.currentState!.validate()){
                          formkey.currentState!.save();
                          FireHelper1().signUp(mail: miemail!, password:mipass! ).then((value){
                            if(value==null){
                              Get.to(loginmini());
                            }else{
                              Get.snackbar("error", value);
                            }
                          });
                        }

                      }, child: Text("sign up"))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
