import 'package:flutter/material.dart';

import 'flipboxnavbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SpotlightNavigationBarHome(),
      home: FlipBoxNavigationBarHome(),
    );
  }
}