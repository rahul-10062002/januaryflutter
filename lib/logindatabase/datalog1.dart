import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:januaryflutter/logindatabase/helperofsql1.dart';
import 'package:januaryflutter/logindatabase/userhome.dart';

import 'dataadmin.dart';
import 'datasign.dart';
void main(){
  runApp(MaterialApp(home: datalogin1(),));
}
class datalogin1 extends StatefulWidget {
  @override
  State<datalogin1> createState() => _datalogin1State();
}

class _datalogin1State extends State<datalogin1> {
  var coemail=TextEditingController();
  var copass=TextEditingController();
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  void logincheck(String email, String password) async {
    if(email=='admin@gmail.com' && password=='1234567'){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>dataadmineg()));
    }else{
      var data=await SQLHELPER.CheckLogin(email,password);
      if(data.isNotEmpty){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homeuser(data: data,)));
        print('login success');
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        title: Text(
          "LOGIN PAGE",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(key: formkey,
        child: Container(
          decoration: BoxDecoration(color: Colors.yellow),
          child: Column(
            children: [
              Text(
                "LOGIN",
                  style: GoogleFonts.aclonica(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 30,
                      fontWeight: FontWeight.w100,
                      color: Colors.black),
              ),
              SizedBox(height: 80,),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,right: 50),
                      child: TextFormField(
                        controller: coemail,
                        validator:(emailid){
                                    if(emailid!.isEmpty|| emailid!.length<10){
                                    return "please enter valid email";
                                    }
                                    else{
                                    return null;
                                    }
                                    }, decoration: InputDecoration(
                            hintText: "email id",
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
                            }, icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100))),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50,right: 50),
                      child: TextFormField(
                        controller: copass,
                        validator: (password){
                          if(password!.isEmpty || password!.length<6){
                            return "please enter valid password";
                          }
                          else{
                            return null;
                          }
                        },
                        obscuringCharacter: '*',
                        obscureText: showpass,
                        decoration: InputDecoration(
                            hintText: "password",
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(onPressed: () {
                              setState(() {
                                if(showpass==true){
                                   showpass=false;
                                }
                                else{
                                  showpass=true;
                                }
                              });
                            }, icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100))),
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {

                      final valid=formkey.currentState!.validate();
                      if(valid){
                        logincheck(coemail.text,copass.text);
                      }
                    }, child: Text("login")),
                    SizedBox(height: 20,),
                    TextButton(onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>datasignup()));
                    }, child: Text("sign up here"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
