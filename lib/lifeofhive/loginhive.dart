import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginhiveeg extends StatefulWidget {
  @override
  State<loginhiveeg> createState() => _loginhiveegState();
}

class _loginhiveegState extends State<loginhiveeg> {
  bool showpass=true;
  GlobalKey<FormState>formkey=GlobalKey();
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
                validator: (email){
                  if(email!.isEmpty || email!.contains('@')){
                    return " please enter valid email";
                  }
                  else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "email",
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 30,),
              TextFormField(
                  validator: (password){
                    if(password!.isEmpty || password!.length<6){
                      return "please enter valid email";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)))),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () {}, child: Text("login"))
            ],
          ),
        ),
      ),
    );
  }
}
