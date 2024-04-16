import 'package:flutter/material.dart';
import 'package:januaryflutter/datapassing/dummyproducts.dart';

class productsheet extends StatefulWidget{
  @override
  State<productsheet> createState() => _productsheetState();
}

class _productsheetState extends State<productsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: dummydata.map((product) => GestureDetector(
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
        onTap: (){},
      )).toList(),

      ),
    );
  }
}