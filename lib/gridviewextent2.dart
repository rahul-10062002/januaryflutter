import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: gridviewex(),));
}
class gridviewex extends StatelessWidget{
  var name=["home","facebook","whatsapp","snapvhat","youtube","facebpook",
    "home","facebook","whatsapp","snapvhat","youtube","facebpook",
    "home","facebook","whatsapp","snapvhat","youtube","facebpook", ];
  List<IconData>icons=[
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook,FontAwesomeIcons.youtube,
    FontAwesomeIcons.youtube,FontAwesomeIcons.youtube,
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.extent(maxCrossAxisExtent: 80,
    mainAxisSpacing: 12,crossAxisSpacing: 12,
    children: List.generate(16, (index){
      return Card(
        color: Colors.cyan,
        child: Column(
          children: [
            Icon(icons[index]),
            Text(name[index])
          ],
        ),
      );
  },),

  ));
  }
  
  
}