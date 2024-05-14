import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("app");
  runApp(MaterialApp(home: signeg(),));
}
class signeg extends StatefulWidget {
  @override
  State<signeg> createState() => _signegState();
}

class _signegState extends State<signeg> {
  final tbox=Hive.box('app');
  List<Map<String, dynamic>> task =[];
  bool showpass=true;
  GlobalKey<FormState>formkey=GlobalKey();
  var coname=TextEditingController();
  var coemail=TextEditingController();
  var pass=TextEditingController();
  var copass=TextEditingController();

  Future<void > CreateUser(Map<String,dynamic> task) async{
    await tbox.add(task);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign up"),
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
              TextFormField(
                controller: coemail,
                validator: (email){
                  if(email!.isEmpty || email.length<6){
                    return "plaese enter valid emailid";
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
              TextFormField(
                controller: pass,
                validator: (password){
                  if(password!.isEmpty || password.length<6){
                    return "please enter password";
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
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              TextFormField(
                  validator: (confirmpassword){
                    if(confirmpassword!.isEmpty || confirmpassword.length<6){
                      return "password must be greater than 6";
                    }
                    else if (pass.text !=copass.text){
                      return" password must be same";

                    }else{
                      return null;
                    }
                  },
                  controller: copass,
                  decoration: InputDecoration(
                      hintText: "confirm password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
              ElevatedButton(onPressed: () {}, child: Text("sing up"))
            ],
          ),
        ),
      ),
    );
  }
}
