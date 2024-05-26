import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('tasknews');

  runApp(MaterialApp(
    home: hivemini(),
  ));
}

class hivemini extends StatefulWidget {
  @override
  State<hivemini> createState() => _mainsqlState();
}

class _mainsqlState extends State<hivemini> {
  final tbox = Hive.box('tasknews');
  List<Map<String, dynamic>> task = [];

  Future<void> CreateTask(Map<String, dynamic> task) async {
    await tbox.add(task);
    loadTask();
  }

  @override
  void initState() {
    super.initState();
    loadTask();
  }

  void loadTask()async{
    final data=tbox.keys.map((id){
      final value=tbox.get(id);
      return {'key':id,'title':value['title'],'subtitle':value['subtitle']};
    }).toList();
    setState(() {
      task=data.reversed.toList();
    });
  }

  Future<void>updatetask(int key,Map<String,dynamic> uptask) async{
    await tbox.put(key, uptask);
    loadTask();
  }
  Future<void>deletetask(int key)async{
    await tbox.delete(key);
    loadTask();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: task.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(itemCount: task.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),height: 250,width: 400,
              child: ListTile(
                title: Text(task[index]['title']),
                subtitle: Text(task[index]['subtitle']),
                trailing: SizedBox(
                  child: Wrap(
                    children: [
                      IconButton(onPressed: () {
                        showForm(context, task[index]['key']);
                      }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {
                        deletetask(task[index]["key"]);
                      }, icon: Icon(Icons.delete))
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context, null),
        child: Icon(Icons.add),
      ),
    );
  }

  final heading= TextEditingController();
  final sub = TextEditingController();

  void showForm(BuildContext context ,  int? id) async {
    if(id!=null){
      final ex_task=task.firstWhere((element) => element['key']==id);
      heading.text=ex_task['title'];
      sub.text=ex_task['subtitle'];
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 120),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextField(
                controller: heading,
                decoration: InputDecoration(
                    hintText: "news heading",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              TextField(
                controller: sub,
                decoration: InputDecoration(
                    hintText: "description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (id == null) {
                      CreateTask({'title': heading.text, 'subtitle': sub.text});
                    }
                    if (id != null) {
                      updatetask(id, {'title':heading.text,'subtitle':sub.text});
                    }
                    heading.text = "";
                    sub.text = "";
                    Navigator.of(context).pop();
                  },
                  child: Text(id == null ? "ADD NOTE" : "UPDATE"))
            ],
          ),
        );
      },
    );
  }
}