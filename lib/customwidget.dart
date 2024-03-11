import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom extends StatelessWidget{
  final Text txt;
  final Text ?desc;
  final Image ?img;
  final Color ?clr;
  VoidCallback onpress;
  custom({this.img,required this.txt,required this.onpress,this.clr,this.desc});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Card(color: clr,
  child: ListTile(
    leading: img,
    title: txt,
    subtitle: desc,
    onTap: onpress,
  ),),
  );
  }

}