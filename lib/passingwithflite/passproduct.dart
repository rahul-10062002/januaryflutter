import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/passingwithflite/dummypass.dart';

class productpass1 extends StatelessWidget{
  final data;
  productpass1({Key?key,required this.data}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
      children:dummydata2.map((passproduct) => GestureDetector(
      child: Center(
        child: Container(
          height: 150,width: 250,
          child: Card(
            child: Column(
              children: [
                Text("${passproduct["name"]}"),
                Image(image: AssetImage("${passproduct["image"]}"),height: 80,width: 80,)
              ],
            ),
          ),
        ),
      ),onTap: ()=>getnote(context,passproduct["id"]),
      )).toList(),),
    );
  }

  getnote(BuildContext context, passproduct) {
    Navigator.of(context).pushNamed('secondpage',arguments: passproduct);
  }
}