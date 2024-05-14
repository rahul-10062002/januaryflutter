import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/datapassing/dummyproducts.dart';

class productdetils extends StatefulWidget{
  @override
  State<productdetils> createState() => _productdetilsState();
}

class _productdetilsState extends State<productdetils> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final product=dummydata.firstWhere((prodct) => prodct["id"]==id);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: Image(image: AssetImage(product["image"]),),
          ),
          Wrap(
            children: [
              Text(product["name"]),
              Text(product["price"]),
            ],
          ),
          Text(product["description"]),
        ],
      ),

    );
  }
}