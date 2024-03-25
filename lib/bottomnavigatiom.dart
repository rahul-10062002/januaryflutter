import 'package:flutter/material.dart';
import 'package:januaryflutter/sliver.dart';

import 'assignment/chatlist.dart';
import 'listbuilder.dart';
import 'listsepet.dart';
void main(){
  runApp(MaterialApp(home: bottomnav(),));
}
class bottomnav extends StatefulWidget{
  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  var screen=[
    chat1(),
    Listbuilder(),
    listseperator(),
    slivereg()

  ];
int  index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottom navigation"),),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.orange,
        selectedItemColor: Colors.blue,
        currentIndex: index,
        onTap: (tabindex){
          setState(() {
            index=tabindex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "account"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notification"),
      ],),
body: screen[index],
    );
  }
}