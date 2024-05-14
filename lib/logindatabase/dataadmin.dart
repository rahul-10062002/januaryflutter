import 'package:flutter/material.dart';
import 'package:januaryflutter/logindatabase/helperofsql1.dart';

class dataadmineg extends StatefulWidget{
  @override
  State<dataadmineg> createState() => _dataadminegState();
}

class _dataadminegState extends State<dataadmineg> {
  var data;
  void delet(int id)async{
    await SQLHelper.Deleteuser(id);
    Refresh();
  }

  @override
  void initState() {
   Refresh();
   super.initState();
  }
  void Refresh() async{
    var mydata= await SQLHelper.getAll();
    setState(() {
      data=mydata;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('admin panel'),),
      body:ListView.builder(itemCount: data.length,itemBuilder: (context,index){
        return Card(
       child: ListTile(title: Text("${data[index]['name']}"),
       trailing: IconButton(onPressed: () {delet(data[index]['id']);  }, icon: Icon(Icons.delete),),),

        );
      })
    );
  }
}