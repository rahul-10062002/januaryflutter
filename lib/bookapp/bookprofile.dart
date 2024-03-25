import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: profileeg(),
    debugShowCheckedModeBanner: false,
  ));
}

class profileeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(backgroundColor: Colors.yellow,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 450, bottom: 20),
            child: Icon(Icons.menu),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Icon(Icons.backspace),
          )
        ],
        bottom: AppBar(centerTitle: true,backgroundColor: Colors.yellow,
          title: Text(
            "profile",
            style: GoogleFonts.abrilFatface(
                textStyle: Theme.of(context).textTheme.displayLarge,fontSize: 40,fontWeight: FontWeight.w100,color: Colors.black),
          ),

        ),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 50,top: 20,right: 50),
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/image/girl2.jpeg"),
                radius: 80,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120,right: 120),
            child: Text("Benneta john",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w100),),
          ),
          Container(
            height: 300,
            width: 500,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.grey),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Icon(Icons.person),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 50),
                        child: Text("edit your profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.grey),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Icon(Icons.settings),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 50),
                        child: Text("settings",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.grey),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Icon(Icons.question_mark),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 50),
                        child: Text("About",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("Exit!!!"),
                      content: Text("Do You Want To exit ?"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("yes")),
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("no"))
                      ],
                    );
                  });
                }, child: Text("log out",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),)),
              )
            ],
          ),
          ),
        ],
      ),
    );
  }
}
