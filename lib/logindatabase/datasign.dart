import 'package:flutter/material.dart';
import 'package:januaryflutter/logindatabase/helperofsql1.dart';

import 'datalog1.dart';
import 'datasplash.dart';

void main() {
  runApp(MaterialApp(home: datasignup(),));
}

class datasignup extends StatefulWidget {
  @override
  State<datasignup> createState() => _datasignupState();
}

class _datasignupState extends State<datasignup> {
  var conname = TextEditingController();
  var conemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();
  GlobalKey<FormState>formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    void Adduser(String name, String email, String password) async {
      var id = await SQLHELPER.AddNewUser(name, email, password);

      if (id != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => datalogin1()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => splashdata()));
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SIGN UP",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(key: formkey,
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: conname,
                    validator: (name) {
                      if (name!.isEmpty || name!.length < 8) {
                        return "plaese enter valid name";
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: conemail,
                    validator: (emailid) {
                      if (emailid!.isEmpty || emailid!.length < 10) {
                        return "plaese enter valid email";
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "emailid",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Icon(Icons.email),
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: pass,
                    validator: (password) {
                      if (password!.isEmpty || password!.length < 6) {
                        return "plaese enter valid password";
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(hintText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if (showpass == true) {
                            showpass = false;
                          }
                          else {
                            showpass = true;
                          }
                        });
                      },
                        icon: Icon(showpass == true ? Icons.visibility_off : Icons
                            .visibility),),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: cpass,
                    validator: (confpassword) {
                      if (confpassword!.isEmpty || confpassword!.length < 6) {
                        return "plaese confirm your password";
                      } else if (pass.text != cpass.text) {
                        return "password must be eaqual";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(hintText: "confirm password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            if (showpass == true) {
                              showpass = false;
                            }
                            else {
                              showpass = false;
                            }
                          });
                        },
                          icon: Icon(
                              showpass == true ? Icons.visibility_off : Icons
                                  .visibility),)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(onPressed: () async {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      ///if form state is bvalid data from the textfield to database
                      String eemail = conemail.text;
        
                      var data = await SQLHELPER.userFound(eemail);
        
                      if (data.isNotEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("user already exist")));
                      }
                      else {
                        Adduser(conname.text, conname.text, conname.text);
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(action: SnackBarAction(label: 'UNDO',
                            onPressed: () {},), content: Text(
                              "Invalid username/password"),));
                    }
                  }, child: Text("sign up")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
