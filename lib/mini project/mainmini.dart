import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/mini%20project/tabmini.dart';

import 'minihive.dart';
import 'minihome.dart';

class mainnews extends StatefulWidget{
  @override
  State<mainnews> createState() => _mainnewsState();
}

class _mainnewsState extends State<mainnews> {
  var screen=[homemini(),tabnews(),hivemini()];
  int index=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: index,
       onTap: (tabindex){
         setState(() {
           index=tabindex;
         });
       },items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
       BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
       BottomNavigationBarItem(icon: Icon(Icons.add),label: "add")
     ],
     ),
     body: screen[index],
   );
  }
}