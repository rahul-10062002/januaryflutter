import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/sharedpreference/sharedlogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shome extends StatefulWidget{
  @override
  State<shome> createState() => _shomeState();
}

class _shomeState extends State<shome> {
  late SharedPreferences data;
  late String username;
  @override
  void initState() {
   fetchhome();
    super.initState();
  }
  void fetchhome() async{
    data=await SharedPreferences.getInstance();
    setState(() {
      username=data.getString("username")!;
    });
  }

  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("home"),),
    body: Center(
      child: Column(
        children: [
          Text("hi welcome $username"),
          Container(
            child: Center(
              child: ElevatedButton(onPressed: () {
                data.setBool("newuser", true);
                Navigator.push((context), MaterialPageRoute(builder: (context)=>slogin()));
              },child: Text("logout"),),
            ),
          ),
        ],
      ),
    ),
  );
  }


}