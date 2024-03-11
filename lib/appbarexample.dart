import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: appbareg(),
  debugShowCheckedModeBanner: false,));
}
class appbareg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.yellow,
       title: Text("welcome"),
     leading: Icon(Icons.menu),
     actions: [
       Icon(Icons.camera_alt),
       Icon(Icons.search),
       PopupMenuButton(itemBuilder: (context){
         return[
           PopupMenuItem(child:Text("settings")),
           PopupMenuItem(child: Text("new group")),
           PopupMenuItem(child: Text("new broadcast")),
           PopupMenuItem(child: Text("linked devices"))
         ];
       })
     ],),
   );
  }

}