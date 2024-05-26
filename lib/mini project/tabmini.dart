import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tabnews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey[500],
          centerTitle: true,
          title: Text(
            "News express",
            style: GoogleFonts.aclonica(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 50,
                fontWeight: FontWeight.w100,
                color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("all news"),
              ),
              Tab(
                child: Text("current affairs"),
              ),
              Tab(
                child: Text("economics"),
              ),
              Tab(
                child: Text("sports"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Colors.grey[500],
                child: Column(
                  children: [
                    Card(color: Colors.yellow,
                      child: Container(
                        height: 250,
                        width: 400,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(100)),
                        child: Wrap(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage("asset/image/current.jpeg"),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "lokh sabha elections to be held",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Text("the election commission has been declared the lokh sabha elections in 6 stages and the results will be announced on june 4",style: TextStyle(fontWeight: FontWeight.w100),),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(color: Colors.yellow,
                      child: Container(
                        height: 250,
                        width: 400,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                        child: Wrap(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage("asset/image/current.jpeg"),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "global warming",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Text("country reports the global warming on areas"),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(color: Colors.yellow,
                      child: Container(
                        height: 250,
                        width: 400,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                        child: Wrap(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage("asset/image/current.jpeg"),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "post covid syndromys increasess",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Text("after covid crisisss country reports large casess of post covid syndromys"),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(color: Colors.yellow,
                      child: Container(
                        height: 250,
                        width: 400,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                        child: Wrap(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage("asset/image/current.jpeg"),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "unemployment increasess",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Text("in country reports uemployment among youth"),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
              Card(
              child: Container(
              height: 250,
              width: 400,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: Wrap(
              children: [
              Container(
              child: Image(
              image: AssetImage("asset/image/current.jpeg"),
              ),
              ),
              Container(
              child: Column(
              children: [
              Text(
              "lokh sabha elections",
              style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text("lokh sabha elections to be declared by election commission of india"),

              ],
              ),
    )
    ],
    ),
    ),
    ),
            Card(
              child: Container(
                height: 250,
                width: 400,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: Wrap(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("asset/image/current.jpeg"),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "currency value increasess",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text("country reports high currency value in recent times"),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text("health"),
            Text("sports")
          ],
        ),
      ),
    );
  }
}
