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
      children: dummydata.map((product) => GestureDetector())

      ),
    );
  }
}