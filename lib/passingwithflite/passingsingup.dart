import 'package:flutter/material.dart';
import 'package:januaryflutter/passingwithflite/passinglogin.dart';
import 'package:januaryflutter/passingwithflite/passingsplash.dart';
import 'package:januaryflutter/passingwithflite/passingsqlhelp.dart';

class signpass extends StatefulWidget {
  @override
  State<signpass> createState() => _signpassState();
}

class _signpassState extends State<signpass> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  var coname = TextEditingController();
  var coemail = TextEditingController();
  var pass = TextEditingController();
  var copass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void Addnewuser(String name, String email, String password) async {
      var id = await SQLHELPER2.AddNewUser(name,password,email);

      if (id != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => loginpass()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => splashpass()));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SIGN UP",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    validator: (name) {
                      if (name!.isEmpty) {
                        return "plaese enter name";
                      } else {
                        return null;
                      }
                    },
                    controller: coname,
                    decoration: InputDecoration(
                        hintText: "name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: coemail,
                    validator: (email) {
                      if (email!.isEmpty || !email.contains('@')) {
                        return "please enter valid email";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "emailid",
                        prefixIcon: Icon(Icons.email),
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: pass,
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "please enter valid password";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "password",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: copass,
                    validator: (confirmpassword) {
                      if (confirmpassword!.isEmpty ||
                          confirmpassword.length < 6) {
                        return "Please confirm your password";
                      } else if (pass.text != copass.text) {
                        return "password not matched";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "confirm password",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final valid1 = formkey.currentState!.validate();
                      if (valid1) {
                        String uname = coemail.text;
                        String name = coname.text;
                        var data = await SQLHELPER2.userFound(uname, name);
                        print(data);
                        if (data.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('user already exist')));
                        }else{
                          Addnewuser(coname.text, coemail.text, pass.text);
                        }
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(action:SnackBarAction(label: 'UNDO', onPressed: () {  },),content:Text('invalid username/password') ));
                      }
                    },
                    child: Text("sign up"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
