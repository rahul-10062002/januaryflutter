

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/passingwithflite/passinglogin.dart';
import 'package:januaryflutter/passingwithflite/passingsingup.dart';
import 'package:januaryflutter/passingwithflite/productdetails.dart';
void main(){
  runApp(MaterialApp(home: splashpass(),
  routes: {'secondpage':(context)=>productdetils()},
  ));
}
class splashpass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome"),),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image(image: AssetImage("asset/image/yellow.jpg"),height: 400,width: 200,),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Wrap(
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>loginpass()));
                    }, child: Text("login")),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>signpass()));
                    }, child: Text("sign up"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}