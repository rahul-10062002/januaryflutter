import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bookhome.dart';
import 'mainpage.dart';

class booklogin extends StatefulWidget {
  @override
  State<booklogin> createState() => _bookloginState();
}

class _bookloginState extends State<booklogin> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[200],
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Text("login page",
                  style: GoogleFonts.aclonica(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 50,
                      fontWeight: FontWeight.w100,
                      color: Colors.black)),
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 50,right: 50),
                child: TextFormField(
                  validator: (username){
                    if(username!.isEmpty || username.length<8){
                      return "please eneter valid username";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: "username",
                  labelText: "username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 50,right: 50),
                child: TextFormField(
                  validator: (password){
                    if(password!.isEmpty || password.length<6 ){
                      return "please enter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                  obscuringCharacter: '*',
                  obscureText: showpass,
                  decoration: InputDecoration(hintText: "password",
                  labelText: "password",
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
                  }, icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility),),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(onPressed: (){
                  final valid=formkey.currentState!.validate();
                  if(valid){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainbook()));
                  }
                  else{

                  }
                }, child: Text("login")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(onPressed: (){}, child: Text("not a user register here")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
