import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'helperofsql.dart';
void main(){
  runApp(MaterialApp(home: datapageeg(),));
}
class datapageeg extends StatefulWidget {
  @override
  State<datapageeg> createState() => _datapageegState();
}

class _datapageegState extends State<datapageeg> {
  bool isloading = true;
  List<Map<String, dynamic>>note_from_db=[];

  @override
  void initState() {
    ///refreshing the id
    refreshData();
    super.initState();
  }

  void refreshData() async {
    final data= await SQLhelper.readNotes();
    setState(() {
      note_from_db=data;
      isloading=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
          itemCount: note_from_db.length,
          itemBuilder: (context, index) {
              return Card(
                color: Colors.red,
                child: ListTile(
                  title: Text("${note_from_db[index]['title']}"),
                  subtitle: Text("${note_from_db[index]['note']}"),
                  trailing: Wrap(
                    children: [
                      IconButton(onPressed: () {
                        showform(note_from_db[index]['id']);
                      }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {
                        deleteNote(note_from_db[index]['id']);
                      }, icon: Icon(Icons.delete))
                    ],
                  ),
                ),
              );
            }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: Icon(Icons.add),
      ),
    );
  }
  final title=TextEditingController();
  final note=TextEditingController();


  void showform(int? id) async {
    if(id!=null){
      final existingNote=note_from_db.firstWhere((note) => note['id']==id);
      title.text=existingNote['title'];
      note.text=existingNote['note'];
  }
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => Container(
              padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(controller: title,
                    decoration: InputDecoration(
                        hintText: "title", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(controller:note,
                    decoration: InputDecoration(
                        hintText: "description", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: () async {
                    if (id==null){
                      await addNote();
                    }
                    if(id!=null){
                      await updateNote(id);
                    }
                    title.text="";
                    note.text="";
                    Navigator.of(context).pop();
                  }, child: Text(id==null?'ADD NOTE':"UPDATE"))
                ],
              ),
            ));
  }

     Future addNote() async {
    await SQLhelper.createNote(title.text,note.text);
    refreshData();

     }

     Future<void> updateNote(int id) async {
     await SQLhelper.updateNote(id, title.text, note.text);
     refreshData();
     }

  void deleteNote(int id) async {
    await SQLhelper.deleteNote(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("note deleted")));
    refreshData();
  }
}
