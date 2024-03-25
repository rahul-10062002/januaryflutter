import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gridvieweg.dart';
import 'listbuilder.dart';
void main(){
  runApp(MaterialApp(home: namedrouts(),
  routes: {
    'grid':(context)=>gridvieweg(),
    'list':(context)=>Listbuilder()
  },));
}
class namedrouts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Center(
        child: Wrap(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'grid',);
            }, child: Text("grid")),
            SizedBox(width: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'list');
            }, child: Text("list")),
          ],
        ),
      ),
    ),
  );
  }

}