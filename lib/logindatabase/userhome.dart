import 'package:flutter/material.dart';

class homeuser extends StatelessWidget{
  final data;
  homeuser({Key?key,required this.data}):super(key:key);
  @override
  Widget build(BuildContext context) {
    var name=data[0]['name'];
    var email=data[0]['email'];
   return Scaffold(
     appBar: AppBar(title: Text("welcome $name"),),
     body: Container(
       child: Center(
         child: Text("flutter $email"),
       ),
     ),
   );
  }

}