import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'newlogin1.dart';
void main(){
  runApp(MaterialApp(home: splash1(),debugShowCheckedModeBanner: false,));
}
class splash1 extends StatefulWidget{
  @override
  State<splash1> createState() => _splash1State();
}

class _splash1State extends State<splash1> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>booklogin()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BOOKIE"),backgroundColor: Colors.white,),
      body: Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/image/yellow.jpg"),fit: BoxFit.fill)),
        child: Center(
          child: FaIcon(FontAwesomeIcons.book,size: 150,)
        ),
      ),
    );
  }
}