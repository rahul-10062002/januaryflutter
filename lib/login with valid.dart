import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:januaryflutter/home.dart';
import 'package:januaryflutter/login.dart';

void main() {
  runApp(MaterialApp(
    home: loginvalid(),
  ));
}

class loginvalid extends StatefulWidget {
  @override
  State<loginvalid> createState() => _loginvalidState();
}

class _loginvalidState extends State<loginvalid> {
  GlobalKey<FormState> Formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Form(
          key: Formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30,right: 30,left: 10),
                child: Text(
                  "login page",
                  style: GoogleFonts.abel(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 50, left: 200,right: 200),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "username",
                      labelText: "username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30, left: 200,right: 200),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains('@') ||
                        !email.contains('.')) {
                      return "please enter valid email";
                    } else {
                      return null;
                    }
                  },
                  obscuringCharacter: "*",
                  obscureText: showpass,
                  decoration: InputDecoration(
                      hintText: "emailid",
                      labelText: "emailid",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass == true) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50, left: 200,right: 200),
                  child: TextFormField(
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "please enter valid password";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "password",
                      labelText: "password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  )),
              ElevatedButton(onPressed: () {
                final valid=Formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                }
                else{

                }
              }, child: Text("login")),
              TextButton(onPressed: () {

              }, child: Text("cant login"))
            ],
          ),
        ),
      ),
    );
  }
}
