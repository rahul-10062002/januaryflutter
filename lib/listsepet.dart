import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listseperator(),));
}
class listseperator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView.separated(itemBuilder: (context,Index){
      return Card(
        child: Text("flutter"),
      );
    }, separatorBuilder: (context,Index){
      if(Index %3==0){
        return Divider(
          color:Colors.red,
          thickness:4,
        );
      }
      else{
        return SizedBox();
      }
    }, itemCount: 10),
  );
  }

}