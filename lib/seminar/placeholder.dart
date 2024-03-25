import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: place(),));
}
class place extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("place holder"),),
     body: Column(
       children: [
         Container(
           height: 200,
           child: Placeholder(
             color: Colors.green,
             strokeWidth: 2.5,
           ),
         )
       ],
     ),
   );
  }

}