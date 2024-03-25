import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: tabbook(),));
}

class tabbook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text("BOOK lending",style:GoogleFonts.aclonica(
          textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 50,
            fontWeight: FontWeight.w100,
            color: Colors.black,),),
            bottom: TabBar(tabs: [
              Tab(child: Text("child"),),
              Tab(child: Text("Humanities"),),
              Tab(child: Text("Education"),),
              Tab(child: Text("Sceince"),),
            ],),
        ),
        body: 
          TabBarView(children: [
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
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
            Text("humanities"),
            Text("Education"),
            Text("sceince")
          ],),
        ),
      
    );
  }

}