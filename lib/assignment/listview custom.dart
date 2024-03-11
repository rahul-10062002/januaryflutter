import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listviewcustom(),));
}

class listviewcustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate:SliverChildListDelegate([

        Card(
          child: Text("hallo",),
          color: Colors.red,
        ),Card(
        child: Text("hallo",),
        color: Colors.red,
      ),Card(
        child: Text("hallo",),
        color: Colors.red,
      ),


     ],)
      ),

    );
  }

}