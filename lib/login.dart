import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: login(),));
}
class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Container(color: Colors.blue,
    child:Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 200),
        child:Image(image:AssetImage("asset/image/snap.png"),height:100,width:100,),),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 70,right: 70,bottom: 50),
          child: TextField(
            decoration: InputDecoration(
              labelText: "username",
              hintText: "username",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 70,right: 70,bottom: 30),
          child: TextField(
            decoration: InputDecoration(
              labelText: "password",
              hintText: "password",
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.visibility_off),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(55))
            ),
          ),
        ),
        ElevatedButton( 
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            
            onPressed: (){

        }, child:Text("login")),
        TextButton(onPressed: (){

        }, child: Text("not a user,create new user"))
      ],
    )

   ),
 );
  }
}