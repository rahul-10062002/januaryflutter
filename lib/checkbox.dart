import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: checkboxeg(),));
}
class checkboxeg extends StatefulWidget{
  @override
  State<checkboxeg> createState() => _checkboxegState();
}

class _checkboxegState extends State<checkboxeg> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
          checkColor: Colors.cyan,
          value: ischecked, onChanged: (bool? value) {
            setState(() {
              ischecked=value!;
            });
        },
        ),
      ),
    );
  }
}