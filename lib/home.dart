import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: home(),));
}
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
      children: [
        Card(color: Colors.green,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("asset/image/snap.png"),),
            title: Text("mohan"),
            subtitle: Text("785465466"),
            trailing: Icon(Icons.call),
          ),
        ),
    Card(color: Colors.blue,
      child: ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage("asset/image/snap.png"),),
      title: Text("ammu"),
      subtitle: Text("845625562"),
      trailing: Icon(Icons.call),
      ),
    ),
        Card(color: Colors.yellow,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("asset/image/snap.png"),),
            title: Text("appu"),
            subtitle: Text("784595222"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.red,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("asset/image/snap.png"),),
            title: Text("manu"),
            subtitle: Text("998522332"),
            trailing: Icon(Icons.call),
          ),
        ),


      ],
      ),
    );



  }

}