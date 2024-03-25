import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: chat1(),));
}
class chat1 extends StatelessWidget{
  var name=["jane","mark","kunal","nikita"];
  var txt=["busy","ongoing","online","offline"];
  var img=["asset/image/person.png","asset/image/person.png","asset/image/person.png","asset/image/person.png"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView.builder(itemBuilder:(context,index){
    return Card(
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(img[index]),),
        title: Text(name[index]),
        subtitle: Text(txt[index]),
      ),
    );
  },itemCount: name.length,
    ));
  }

}