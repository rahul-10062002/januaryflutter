import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/login.dart';
void main(){
  runApp(MaterialApp(
    home: splashscreen(),
    debugShowCheckedModeBanner: false,
  ));

}
class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
  Timer(Duration(seconds: 5),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/image/back.jpg"),fit: BoxFit.fitHeight),),
     child: Center(
       child: Image(image: AssetImage("asset/image/snap.png"),height: 150,width: 150,),
     ),),


   );
  }
}

