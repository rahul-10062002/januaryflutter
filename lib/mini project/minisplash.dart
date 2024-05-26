
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'minilogin1.dart';
import 'minisignup.dart';



void main(){
  runApp(MaterialApp(home: splash(),debugShowCheckedModeBanner: false,));
}

class splash extends StatefulWidget{
  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.orange,centerTitle: true,
        title: Text("News L",style: GoogleFonts.aboreto(
          textStyle: Theme.of(context).textTheme.displayLarge,
          fontSize: 50,
          fontWeight: FontWeight.w100,
          color: Colors.black,
        ),),),
      body: Container(
        child: Center(
          child: Column(
            children:[ Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),color: Colors.orange,
                  boxShadow:[BoxShadow(color: Colors.black,spreadRadius: 5,blurRadius: 7,offset: Offset(0,3))] ),
              height: 500,
              width: 450,
              child: Lottie.asset("asset/anim/anim2.json"),
            ),
              Center(
                child: Wrap(
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginmini()));
                    }, child: Text("login")),
                    ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signmini()));
                    }, child: Text("sign up"))
                  ],
                ),
              )
          ]),
        ),
      )

          //child: Lottie.asset("asset/anim/anim2.json"),



    );
  }
}
