import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: farmer(),debugShowCheckedModeBanner: false,));
}
class farmer extends StatelessWidget{
  var name=["tomato","mango","apple","pineapple","pappaya","potato"];
  var img=["asset/image/book.jpg","asset/image/book.jpg","asset/image/book.jpg","asset/image/book.jpg","asset/image/book.jpg","asset/image/book.jpg"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: CustomScrollView(
         slivers: [
           SliverAppBar(title: Text("FARMERS FRESH ZONE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
           expandedHeight: 150,
           backgroundColor: Colors.green[500],
           actions: [
             Padding(
               padding: const EdgeInsets.only(right: 50),
               child: IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 50),
               child: Text("kochi"),
             ),
           ],
           bottom: AppBar(
             backgroundColor: Colors.green[500],
             title: Container(
               height: 40,
               width: double.infinity,
               decoration: BoxDecoration(color: Colors.white,shape: BoxShape.rectangle ),
               child: TextField(decoration: InputDecoration(hintText: "search fruits and vegetables here..",border: InputBorder.none,prefixIcon: Icon(Icons.search))
                 ,),
             ),
           ),
           ),
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
            return Card(
              child: Column(
                children: [
                  Text(name[index]),
                  Image(image: AssetImage(img[index]))
                ],
              ),
            );
          },itemCount: name.length,)
          ],

       


       ),
     ),

   );
  }

}