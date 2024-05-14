import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/passingwithflite/dummypass.dart';

class passdetils extends StatefulWidget{
  @override
  State<passdetils> createState() => _passdetilsState();
}

class _passdetilsState extends State<passdetils> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    print(id);
    final passproduct=dummydata2.firstWhere((prodct) =>prodct["id"]==id );
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
       children: [
        Image(image: AssetImage(passproduct["image"])),
         
         Wrap(
           children: [
             Text(passproduct["name"]),
             Text(passproduct["price"])
           ],
         ),
         Text(passproduct["decsription"])
       ],
     ));
  }
}