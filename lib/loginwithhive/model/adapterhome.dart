import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homee extends StatelessWidget{
  final String email;
  const Homee({Key?key,required this.email});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Text(
         'welcome $email',
         style: TextStyle(fontSize: 30,color: Colors.pink),
       ),
     ),
   );
  }

}