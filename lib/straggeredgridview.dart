import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: straggered(),));
}
class straggered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
            child: Card(
              child: Column(
                children: [
                  Text("home"),
                  Icon(Icons.home)
                ],
              ),
            )),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1,
            child: Card(
              child: Column(
                children: [
                  Text("home"),
                  Icon(Icons.home)
                ],
              ),
            )),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1,
            child: Card(
              child: Column(
                children: [
                  Text("home"),
                  Icon(Icons.home)
                ],
              ),
            )),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3,
            child: Card(
              child: Column(
                children: [
                  Text("home"),
                  Icon(Icons.home)
                ],
              ),
            )),
      StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3,
        child: Container(
          color: Colors.deepOrange,

        ),
      )],),
    );
  }
  
}