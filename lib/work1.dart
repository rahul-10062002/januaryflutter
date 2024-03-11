import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: staggered(),));
}
class staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("staggeredrecylerview"),
        titleTextStyle: TextStyle(color: Colors.blue),),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                            image:
                            AssetImage("asset/image/havasu.jpg"),
                            height: 200,
                            width: 280,
                            fit: BoxFit.fill,),
                          Text("havasu falls"),
                        ],),
                    ),
                  ),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Image(image: AssetImage("asset/image/trondhiem.jpg"),
                            height: 460,
                            width: 280,
                            fit: BoxFit.fill),
                      ),
                      Text("trondheim"),
                    ],
                  ),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 450,
                          width: 230,
                          child: Image(
                            image: AssetImage("asset/image/portugal.jpg"),
                            fit: BoxFit.fill,),
                        ),
                      ),
                      Container(
                        child: Text("portugal"),
                      )
                    ],
                  ),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("asset/image/rocky.jpg"),
                            height: 200,
                            width: 250,
                            fit: BoxFit.fill,),
                          Text("rocky mountains")
                        ],
                      ),
                    ),
                  ),
                )
            ),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount:1, 
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("asset/image/alps.jpg"),height: 200,width: 250,fit: BoxFit.fill),
                          Text("alps mountain")
                        ],
                      ),
                    ),
                  ),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("asset/image/guna1.jpg"),height: 200,width: 250,fit: BoxFit.fill),
                          Text("guna caves")
                        ],
                      ),
                    ),
                  ),
                ))
          ],),
      ),);
  }
}



  
