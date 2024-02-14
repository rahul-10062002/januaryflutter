import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Sample(),
    debugShowCheckedModeBanner: false,));
}
class Sample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  appBar: AppBar(title: Text("welcome"),
  backgroundColor: Colors.red,)
,   body: Container(decoration: BoxDecoration(gradient: LinearGradient(colors:
[Colors.green,
  Colors.red,
  Colors.yellow]
     ,begin: Alignment.bottomRight,
   end: Alignment.centerRight
 )),
   width: double.infinity,
   height: double.infinity,
   child: Column(
   mainAxisAlignment: MainAxisAlignment.center
     ,
   children: [
     Image(image: AssetImage("asset/image/snap.png"),height: 138,width: 150,),
     Text("flutter",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 20),),
   ],
      ),
 ),


 );
  }


}