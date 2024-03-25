import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: bookhome(),debugShowCheckedModeBanner: false,
  ));
}

class bookhome extends StatefulWidget {
  @override
  State<bookhome> createState() => _bookhomeState();
}

class _bookhomeState extends State<bookhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ENJOY READING"),
        bottom: AppBar(
          title: Container(
            child: Card(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "search for books", suffixIcon: Icon(Icons.search),),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.orange[400]),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 350),
                      child: Image(image: AssetImage("asset/image/kutty.jpeg"),height: 200,width: 100,),
                    ),
                    Positioned(left:40,top:20,child: Text("child picture",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                    Positioned(top:50,left:40,child: Text("Book",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                    Positioned(top: 130,left: 20,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.red),
                        height: 50,
                        width: 150,
                        child: TextButton(onPressed: () {  }, child: Text("click to order"),),
                      ),
                    )
                  ],
                )
              ),
              Container(
                child:Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 10),
                      child: Column(
                        children: [
                          FaIcon(FontAwesomeIcons.book,color: Colors.yellow,),
                          Text("book")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 10),
                      child: Column(
                        children: [
                          FaIcon(FontAwesomeIcons.heart,color: Colors.yellow,),
                          Text("reading")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 10),
                      child: Column(
                        children: [
                          FaIcon(FontAwesomeIcons.squarespace,color: Colors.yellow,),
                          Text("space")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 10),
                      child: Column(
                        children: [
                          FaIcon(FontAwesomeIcons.square,color: Colors.yellow,),
                          Text("more")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: 500,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("RECCOMEND",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Wrap(
                    children: [
                      Container(
                        child: Image(image: AssetImage("asset/image/goat.jpg"),fit: BoxFit.fill,height: 180,width: 100,),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text("The Goat life",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 40),
                              child: Text("Drama/adventure"),
                            ),
                          ],
                        )
                      )
                     
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Wrap(
                    children: [
                      Container(
                        child: Image(image: AssetImage("asset/image/bamboo.jpeg"),fit: BoxFit.fill,height: 180,width: 100,),
                      ),
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text("Bamboo king",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 40),
                                child: Text("Drama/adventure"),
                              ),
                            ],
                          )
                      )
        
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Wrap(
                    children: [
                      Container(
                        child: Image(image: AssetImage("asset/image/wall.jpg"),fit: BoxFit.fill,height: 180,width: 100,),
                      ),
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text("MATHILUKAL",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 40),
                                child: Text("Drama/periodic/romance"),
                              ),
                            ],
                          )
                      )

                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Wrap(
                    children: [
                      Container(
                        child: Image(image: AssetImage("asset/image/rope.jpg"),fit: BoxFit.fill,height: 180,width: 100,),
                      ),
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text("ARACHAR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 40),
                                child: Text("Drama/periodic/emotional"),
                              ),
                            ],
                          )
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
