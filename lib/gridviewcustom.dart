import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: gridviewcus(),));
}
class gridviewcus extends StatelessWidget {
 List<IconData>icons=[
   FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
   FontAwesomeIcons.facebook,FontAwesomeIcons.youtube,
   FontAwesomeIcons.youtube,FontAwesomeIcons.youtube,
 ];
  
  var name=["home","facebook","whatsapp","settings","home","facebook"];
  var clr = [
    Colors.lightGreen,
    Colors.lightBlueAccent,
    Colors.blueGrey,
    Colors.black26,
    Colors.pinkAccent,
    Colors.teal
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)
    ,
    childrenDelegate
    :
    SliverChildBuilderDelegate
    (
    (
    context
    ,
    index
    ){
    return Card(color: clr[index],
    child: Column(
    children: [
    Icon(icons[index]),Text(name[index]),

    ],
    ),
    );

    },childCount: name.length)
    ,
        ));
  }

}