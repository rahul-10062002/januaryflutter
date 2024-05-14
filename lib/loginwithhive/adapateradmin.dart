import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/passingwithflite/passingsqlhelp.dart';

class passadmin1 extends StatefulWidget{
  @override
  State<passadmin1> createState() => _passadmin1State();
}

class _passadmin1State extends State<passadmin1> {
  var data;
  void delet(int id) async{
    await SQLHELPER2.Deleteuser(id);
    Refresh();
  }
  @override
  void initState() {
    Refresh();
    super.initState();
  }
  void Refresh() async {
    var mydata=await SQLHELPER2.getAll();
    setState(() {
      data=mydata;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("admin panel"),),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(title: Text("${data[index]['name']}"),
            trailing: IconButton(onPressed: () {delet(data[index]['id']);  }, icon: Icon(Icons.delete),),),
        );
      }),

    );
  }
}