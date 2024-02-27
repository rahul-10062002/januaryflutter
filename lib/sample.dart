import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
 runApp(DevicePreview
   (isToolbarVisible: true,
     builder: (BuildContext context)=>MaterialApp(
   debugShowCheckedModeBanner: false,
   useInheritedMediaQuery: true,

   home:Sample(),
     )
 ));
}
class Sample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  appBar: AppBar(title: Text("welcome"),
  backgroundColor: Colors.red,)
,   body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/image/back.jpg"),
   fit: BoxFit.fill

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