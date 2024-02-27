import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/home.dart';
import 'package:januaryflutter/login.dart';

void main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> Formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.green,
      child: Column(
        children: [
          Text(
            "registration",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 50),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                labelText: "username",
                hintText: "username",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: TextFormField(
              validator: (email) {
                if (email!.isEmpty ||
                    !email.contains('@') ||
                    !email.contains('.')) {
                  return "eneter valid email id";
                } else {
                  return null;
                }
              },
              obscuringCharacter: '*',
              obscureText: showpass,
              decoration: InputDecoration(
                  labelText: "emailid",
                  hintText: "emailid",
                  prefixIcon: Icon(Icons.email),
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
                          : Icons.visibility)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Form(
              key: Formkey,
              child: TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "please eneter valid password";
                  } else {
                    return null;
                  }
                },
                obscuringCharacter: '*',
                obscureText: showpass,
                decoration: InputDecoration(
                    labelText: "password",
                    hintText: "password",
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
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              onPressed: () {
                final valid=Formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>home()));
                }
              },
              child: Text("REGISTER"))
        ],
      ),
    ));
  }
}
