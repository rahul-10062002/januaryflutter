import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'datalog1.dart';
import 'datasign.dart';
void main(){
  runApp(MaterialApp(home: splashdata(),));
}
class splashdata extends StatefulWidget {
  @override
  State<splashdata> createState() => _splashdataState();
}

class _splashdataState extends State<splashdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "HI THERE... ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>datalogin1()));
                      },
                      child: Text(
                        "login",
                        style: TextStyle(
                            fontSize: 20, ),
                      ))),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>datasignup()));
                      },
                      child: Text(
                        "sign up",
                        style: TextStyle(
                            fontSize: 20, ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
