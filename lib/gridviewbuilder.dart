import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridbuilder(),));
}
class gridbuilder extends StatelessWidget{
  var images=["asset/image/icon.png","asset/image/snap.png","asset/image/icon.png","asset/image/snap.png"];
  var name=["home","facebook","whatsapp","settings",];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
  return Card(
   child: Column(
     children: [
       Image(image: AssetImage(images[index]),height: 100,width: 40,),
       Text(name[index])
     ],
   ), 
  );
    },itemCount: name.length,

));
  }

}