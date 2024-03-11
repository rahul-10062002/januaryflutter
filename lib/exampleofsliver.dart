import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: design(),debugShowCheckedModeBanner: false,));
}

class design extends StatelessWidget{
  var img=["asset/image/room1.jpg","asset/image/image2.jpg","asset/image/room1.jpg","asset/image/image2.jpg","asset/image/room1.jpg","asset/image/image2.jpg"];
  var prize=["400","500","800","700","600","400"];
  var name=["awesome room","nice room","vintage room","star room","5 star room","3 star room"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 180,
           leading: Icon(Icons.menu),
            backgroundColor: Colors.lightBlueAccent[100],
            title: Padding(
              padding: const EdgeInsets.only(left: 100,top: 30),
              child: Text("Type your location",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
            ),
           actions: [
             IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
           ],
           floating: true,
           pinned: true,
           bottom: AppBar(
             backgroundColor: Colors.lightBlueAccent[100],
             title: Container(
               height: 60,
               width: 480,
               decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(40)),
               child: TextField(decoration: InputDecoration(hintText: "search here",border: InputBorder.none,prefixIcon: Icon(Icons.search)),),
             ),
           ),
         ),
         SliverList(delegate: SliverChildListDelegate([
          Container(
           color: Colors.white,
            height: 120,
            child: Stack(
              children: [
                Positioned(height:80,width:80,
                  child: Container(
                    child: Card(
                      color: Colors.pink,
                      child: Column(
                        children: [
                          Center(
                            child: Icon(Icons.hotel),
                          ),
                          Center(
                            child: Text("hotel"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  top: 20,
                    left: 100,
                ),
                Positioned(height: 80,width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Center(
                          child: Icon(Icons.restaurant),
                        ),
                        Center(
                          child: Text("Restaurant"),
                        )
                      ],
                    ),
                  ),
                  top: 20,
                  left: 200,
                ),
                Positioned(height: 80,width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Center(
                          child: Icon(Icons.room),
                        ),
                        Center(
                          child: Text("Rooms"),
                        )
                      ],
                    ),
                  ),
                  left: 300,
                  top: 20,
                ),
                Positioned(height: 80,width: 80,
                  child: Card(
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        Center(
                          child: Icon(Icons.local_cafe_rounded),
                        ),
                        Center(
                          child: Text("cafe"),
                        )
                      ],
                    ),
                  ),
                  top: 20,
                  left: 200,
                ),

              ],
            ),
          ),
         ])),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Container(
              color: Colors.white,
              height: 300,
              child: Card(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage(img[index]),fit: BoxFit.fill),),

                    ),
                    Positioned(height: 30,width: 30,
                      child: Container(
                        height: 35,
                        width: 35,
                        color: Colors.white,
                        child: Center(
                          child: Text("${prize[index]}"),
                        ),
                      ),

                      left: 450,
                      bottom: 150,
                    ),
                    Positioned(
                        child: Text(name[index],style:TextStyle(fontSize: 30,fontWeight: FontWeight.w100)),
                      top: 200,
                    ),
                  ],
                ),
              ),
            );
          },childCount: name.length))
       ],
     ),
   );
  }

}