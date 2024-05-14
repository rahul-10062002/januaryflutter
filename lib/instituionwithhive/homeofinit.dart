import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inithome extends StatelessWidget{
  final String email;
  final String name;
  final String course;
  final String graduation;
  inithome({Key?key,required this.email,required this.name,required this.course,required this.graduation});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('welcome $name'),),
    body: Container(
      child:Column(
        children: [
          Text('$email'),
          Text('$course'),
          Text('$graduation')
        ],
      ) ,
    ),
  );
  }

}