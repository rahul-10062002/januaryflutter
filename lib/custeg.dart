import 'package:flutter/material.dart';
import 'package:januaryflutter/customwidget.dart';
import 'package:januaryflutter/login.dart';
void main(){
  runApp(MaterialApp(home:custeg(),));
}

class custeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: custom(txt: Text("welcome"),
          clr:Colors.red,
          img:Image.asset("asset/image/icon.png"),
          onpress: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
          },),
      ),
    );
  }

}