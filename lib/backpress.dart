import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bakpress(),));
}
class bakpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  Future<bool> showdialogpop() async{
    return await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("exit!!!"),
        content: Text("do you want to exiyt"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("yes")),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("no"))
        ],
      );
    });
  }
      return WillPopScope(onWillPop: showdialogpop,
          child: Scaffold(body: Center(child: Text("backpress"),),));
    }
  }

