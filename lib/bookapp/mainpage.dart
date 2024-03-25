import 'package:flutter/material.dart';
import 'package:januaryflutter/bookapp/tabpage.dart';

import 'bookhome.dart';
import 'bookprofile.dart';
void main(){
  runApp(MaterialApp(home: mainbook(),debugShowCheckedModeBanner: false,));
}
class mainbook extends StatefulWidget{
  @override
  State<mainbook> createState() => _mainbookState();
}

class _mainbookState extends State<mainbook> {
  var screen=[bookhome(),tabbook(),profileeg()];
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
       }, items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
       BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "user account"),
     ],

     ),
     body:screen[index],
   );
  }
}