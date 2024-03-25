import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: flexibleeg(),));
}
class flexibleeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(child: Column(children: [
       Flexible(child: Container(color: Colors.yellow,),
       flex: 2,),
       Flexible(child: Container(color: Colors.red,),
         flex: 4,),
       Flexible(child: Container(color: Colors.blue,),
         flex: 3,),

     ],),),

   );
  }

}