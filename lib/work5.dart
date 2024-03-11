import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: stackee(),));
}
class stackee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Container(
           color: Colors.blue,

         ),
         Positioned(height: 250,
           width: 500,
           child: Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
            color: Colors.white38 ),
           ),
         ),
         Positioned(child: Text("profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w200),))
       ],
     ),
   );
  }

}