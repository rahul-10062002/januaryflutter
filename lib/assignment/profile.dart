import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: profile(),debugShowCheckedModeBanner: false,));
}
class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 450),
            child: Icon(Icons.menu),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 450,top: 2),
            child: Icon(Icons.arrow_back),
          ),
          Container(
            child:  CircleAvatar(backgroundImage: AssetImage("asset/image/girl2.jpeg"),
                radius: 80),
                ),
               Container(
                 child: Row(
                   children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120,top: 20),
                    child: CircleAvatar(child: FaIcon(FontAwesomeIcons.facebook,),backgroundColor: Colors.blue,),
                  ),
                     Padding(
                       padding: const EdgeInsets.only(left: 40,top: 20),
                       child: CircleAvatar(child: FaIcon(FontAwesomeIcons.google),backgroundColor: Colors.red,),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 40,top: 20),
                       child: CircleAvatar(child: FaIcon(FontAwesomeIcons.twitter),backgroundColor: Colors.blue[300],),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 30,top: 20),
                       child: CircleAvatar(child: FaIcon(FontAwesomeIcons.linkedin),backgroundColor: Colors.blue[500],),
                     ),
                   ],
                 ),
               ),
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: Text("chromicle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Text("@amFFOS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 100),
            child: Text("Mobile App Developer and Open",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text("source enthusiastic",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 20),),
          ),
          Container(height: 300,
          width: 400,
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),color: Colors.grey),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Icon(Icons.person),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("privacy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),color: Colors.grey),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Icon(Icons.settings),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("purchase history",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),color: Colors.grey),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Icon(Icons.question_mark),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("Help & support",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),color: Colors.grey),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Icon(Icons.dashboard),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("dashboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                      ),
                    ],
                  ),
                ),
              ),

            ],),
          ),)
        ],
      ),
    );
  }

}