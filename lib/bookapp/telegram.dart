import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: telegram1(),));
}
class telegram1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("telegram"),
        backgroundColor: Colors.blue[300],
        actions: [
          Icon(Icons.search),
        ],
      ),
      drawer: Drawer(child: ListView(children: [
      UserAccountsDrawerHeader(accountName: Text("name"), accountEmail: Text("rahulzemix123@gmail.com"),
      currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("asset/image/kutty.jpeg"),),
      otherAccountsPictures: [
        CircleAvatar(backgroundImage: AssetImage("asset/image/kutty.jpeg")),
          CircleAvatar(backgroundImage: AssetImage("asset/image/kutty.jpeg")),
      ],
      ),
      ListTile(leading: Icon(Icons.group),
      title: Text("new group"),),
        ListTile(leading: Icon(Icons.contacts),
          title: Text("contacts"),),
        ListTile(leading: Icon(Icons.call),
          title: Text("call"),),
        ListTile(leading: Icon(Icons.near_me),
          title: Text("people near by"),),
        ListTile(leading: Icon(Icons.message),
          title: Text("saved message"),),
        ListTile(leading: Icon(Icons.settings),
          title: Text("settings"),),
        Container(
          child: Card(
            child: ListTile(leading: Icon(Icons.insert_invitation),
            title: Text("invite freinds"),),

          ),
        )
      ],),),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("asset/image/girl.jpg"),
              ),
              title: Text("alicia torres"),
              subtitle: Text("bob says hi"),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("asset/image/girl.jpg"),
              ),
              title: Text("alicia torres"),
              subtitle: Text("bob says hi"),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("asset/image/girl.jpg"),
            ),
            title: Text("alicia torres"),
            subtitle: Text("bob says hi"),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("asset/image/girl.jpg"),
              ),
              title: Text("alicia torres"),
              subtitle: Text("bob says hi"),
            ),
          ),
        ],
      ),
    );
  }
}
