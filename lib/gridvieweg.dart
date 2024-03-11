import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridvieweg(),));
}
class gridvieweg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("gridview"),),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
        children: [
          Card(
            child: Column(
              children: [
                Text("home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("home"),
                Icon(Icons.home),
              ],
            ),
          ),
        ],
      )
    );
  }

}