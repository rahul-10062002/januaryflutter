import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: dismisseg(),));
}
class dismisseg extends StatelessWidget{
  var data=["data1","data2","data3","data4"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("dismissible"),),
    body: ListView.builder(itemBuilder: (context, index) {
      return Dismissible(background:Container(color: Colors.red,),
          secondaryBackground: Container(color: Colors.yellow,),
          key: ValueKey(data),
          child: ListTile(
          title: Center(child: Text(data[index]),),
      ));
    },itemCount: data.length,),

  );
  }

}