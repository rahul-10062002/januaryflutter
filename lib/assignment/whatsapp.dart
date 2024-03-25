import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../listsepet.dart';
void main(){
  runApp(MaterialApp(home: whatsapp(),debugShowCheckedModeBanner: false,));
}
class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("whatsapp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
        backgroundColor: Colors.green[800],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.camera),
            ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu_outlined),
          )
        ],
        bottom: TabBar(tabs: [
          Icon(Icons.group),
          Text("chat",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text("status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ],),),
        body: TabBarView(children: [
          listseperator(),
          Center(child: Text("chat")),
          Center(child: Text("status")),
        ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {  },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add),),
        
      
      
      ),
    );
  }

}