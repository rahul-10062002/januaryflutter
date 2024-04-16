import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/sharedpreference/shome.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: slogin(),));
}
class slogin extends StatefulWidget{
  @override
  State<slogin> createState() => _sloginState();
}

class _sloginState extends State<slogin> {
  late SharedPreferences data;
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  late bool newuser;
  @override
  void initState() {
   checkuser();
    super.initState();
  }
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("login page"),),
    body:Container(
      child: Column(
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(hintText: "emailid"),
          ),
          TextField(
            controller:password ,
            decoration: InputDecoration(hintText: "password"),),
          ElevatedButton(onPressed: (){
            String uname=username.text;
            String upass=password.text;

            if(uname!='' && upass!=''){
              print("login success");
              data.setString("username", uname);
              data.setBool("newuser", false);
            }
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>shome()));
            });
          }, child: Text("login"))
        ],
      ),
    ) ,
  );
  }

  void checkuser() async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool("newuser") ?? true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>shome()));
    }
  }
}