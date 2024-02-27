import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:januaryflutter/assignment/newlogin.dart';
void main(){
  runApp(MaterialApp(
      home: splash()
  ));
}
class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Newlogin()));
    });
      super.initState();
  }
    @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("welcome"),backgroundColor: Colors.white,),
     body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/image/back1.jpg"),fit: BoxFit.fill)),
       child: Center(
         child: Image(image: AssetImage("asset/image/icon.png"),height: 300,width: 300,),
       ),
     ),
   );
  }
}
