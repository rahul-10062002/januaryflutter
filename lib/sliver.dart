

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: slivereg(),debugShowCheckedModeBanner: false,));
}
class slivereg extends StatelessWidget{
  var clr=[50,40,30,10,20,30,500,800,320];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(leading: Icon(Icons.menu),
          title: Text("slver example"),
          backgroundColor: Colors.red,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
          ],
          floating: true,
          pinned: true,
          expandedHeight: 140,
          bottom: AppBar(
            backgroundColor: Colors.red[400],
            title: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(hintText: "search here",border: InputBorder.none,suffixIcon: Icon(Icons.camera),prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Card(color: Colors.green,
            child: Container(height: 100,),);
          },childCount: clr.length))
        ],
      ),
    );
  }

}