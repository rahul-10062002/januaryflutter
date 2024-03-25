import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expandedeg(),));
}
class expandedeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.blue,height: 100,width:50 ,)),    //row ahneki width affect cheyila
            Expanded(child: Container(color: Colors.yellow,height: 100,width: 50,)),
            Expanded(child: Container(color: Colors.red,height: 100,width: 50,)),
          ],
        ),
      ),
    );
  }

}