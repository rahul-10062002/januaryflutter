import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackof(),));
}
class Stackof extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
             children: [
               Container(
                 color: Colors.blue,
               ),
               Center(
                 child: Container(
                   height: 220,
                   color: Colors.white54,
                 ),
               ),
               Positioned(child: Text("my profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,),),left: 30,bottom: 250,),
               Positioned(child: TextButton(onPressed: (){}, child: Text("edit your profile",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20,))),left: 30,bottom: 200,),
              Center
                (child: Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: CircleAvatar(radius: 60,backgroundImage: AssetImage("asset/image/person.png"),),
                )),
               Padding(
                 padding: const EdgeInsets.only(top: 280,left: 150),
                 child: Text("mishal sheref",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w200),),
               ),
              Padding(
                padding: const EdgeInsets.only(top: 350,left: 200),
                child: Container(
                  height: 50,
                  width: 230,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    child: Wrap(
                      children: [
                        Icon(Icons.person),
                        Text("about",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                      ],
                    )
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 200,top: 200,left: 180),
                 child: Container(
                   height: 50,
                   width: 230,
                   child: Card(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                     child: Wrap(
                       children: [
                         Icon(Icons.dashboard),
                         Text("dashboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),)
                       ],
                     ),
                   ),
                 ),
               )
             ],
           )
       );
  }

}