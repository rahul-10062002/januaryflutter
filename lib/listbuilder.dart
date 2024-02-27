import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listbuilder(),));
}
class Listbuilder extends StatefulWidget{
  @override
  State<Listbuilder> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
  var name=["anu", "anju","vinu","ram","kiran","maya"];
  var phone=["978564123","9788564123","976564123","946564123","978564123","9788564123"];
  var images=["assets/images/fb.png","assets/images/tree.png","assets/images/fb.png",
    "assets/images/tree.png","assets/images/fb.png","assets/images/tree.png",];
  var color=[Colors.green,Colors.red,Colors.yellow,Colors.blue,Colors.greenAccent,Colors.deepPurpleAccent,Colors.pink];
  var clr=[800,700,600,500,400,300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          shadowColor: Colors.green,
          surfaceTintColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.yellow[clr[index]],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
            title: Text("${name[index]}"),
            subtitle: Text("${phone[index]}"),
            trailing: Icon(Icons.call),
          ),
        );

      },itemCount:name.length ,),
    );
  }
}