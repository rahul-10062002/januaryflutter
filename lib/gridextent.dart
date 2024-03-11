import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridextent(),));
}
class gridextent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("gridextent"),),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
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

        ],
      ),
    );
  }

}