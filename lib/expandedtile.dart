import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expandedtileeg(),));
}

class expandedtileeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(title: Text("Colors"),
          subtitle: Text("type of colours"),
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.red,),
              title: Text("red"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue,),
              title: Text("blue"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.yellow,),
              title: Text("yellow"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.orange,),
              title: Text("orange"),
            ),
          ],),
          ExpansionTile(title: Text("Colors"),
            subtitle: Text("type of colours"),
            children: [
              Card(
                child: ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.red,),
                  title: Text("red"),
                ),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text("blue"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.yellow,),
                title: Text("yellow"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.orange,),
                title: Text("orange"),
              ),
            ],),
        ],
      ),
    );
  }

}