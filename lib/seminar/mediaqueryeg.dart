import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyWidget(),));
}
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("media query"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.5,
           decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.5,
            decoration: BoxDecoration(color: Colors.green),
          )
        ],
      ),
    );
  }
}