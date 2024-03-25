import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listbuilder.dart';

class tabeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("tabbar example"),
        actions: [
          Icon(Icons.add),
        ],
        bottom: TabBar(tabs: [
          Tab(child: Text("camera"),),
          Tab(child: Text("chat"),),
          Tab(child: Text("contact"),),
          Tab(child: Text("status"),),
        ],),),
        body: TabBarView(children: [
          Text("camera"),
          Listbuilder(),
          Text("contacts"),
          Text("status")
        ],),
      ),
    );
  }

}