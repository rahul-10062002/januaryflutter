import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: examplebuilder(),
  ));
}

class examplebuilder extends StatelessWidget {
  var name = [
    "car",
    "bycycle",
    "boat",
    "bus",
    "train",
    "walk",
    "contact",
    "duo",
    "hour",
    "mobile",
    "message",
    "key",
    "wifi",
    "bluetooth",
    "smile"
  ];
  var images = [
    "asset/image/snap.png",
    "asset/image/icon.png",
    "asset/image/snap.png",
    "asset/image/icon.png",
    "asset/image/icon.png",
    "asset/image/icon.png",
    "asset/image/icon.png",
    "asset/image/snap.png",
    "asset/image/snap.png",
    "asset/image/icon.png",
    "asset/image/snap.png",
    "asset/image/icon.png",
    "asset/image/snap.png",
    "asset/image/icon.png",
    "asset/image/snap.png"
  ];
  var clr = [
    Colors.lightGreen,
    Colors.lightBlueAccent,
    Colors.blueGrey,
    Colors.black26,
    Colors.brown,
    Colors.yellow,
    Colors.deepPurpleAccent,
    Colors.teal,
    Colors.pinkAccent,
    Colors.blueGrey,
    Colors.white,
    Colors.indigoAccent,
    Colors.blueGrey,
    Colors.tealAccent,
    Colors.pinkAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("gridview builder"),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              color: clr[index],
              child: Column(
                children: [
                  Image(
                    image: AssetImage(
                      images[index],
                    ),
                    height: 80,
                    width: 20,
                  ),
                  Text(name[index]),
                ],
              ),
            );
          },
          itemCount: name.length,
        ));
  }
}
