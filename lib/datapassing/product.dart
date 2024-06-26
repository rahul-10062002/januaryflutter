import 'dart:js';

import 'package:flutter/material.dart';
import 'package:januaryflutter/datapassing/dummyproducts.dart';
import 'package:januaryflutter/datapassing/productdetails.dart';
void main(){
  runApp(MaterialApp(home: productsheet(),

  routes: {'secondpage':(context)=>productdetils()},));

}

class productsheet extends StatefulWidget{
  @override
  State<productsheet> createState() => _productsheetState();
}

class _productsheetState extends State<productsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: dummydata.map((product) => GestureDetector(  //button athe property
        child: Center(
          child: Container(color: Colors.green,
          height: 150,width: 250,
          child: Card(
            child: Column(
              children: [
                Text("${product["name"]}"),
                Image(image: AssetImage("${product["image"]}"),height: 80,width: 80,),
              ],
            ),
          ),),
        ),
        onTap: ()=>getnote(context,product["id"]),
      )).toList(),

      ),
    );

  }

  getnote(BuildContext context, product) {
    Navigator.of(context).pushNamed('secondpage',arguments: product);
  }

}