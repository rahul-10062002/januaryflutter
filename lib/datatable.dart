import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: datatableg(),));
}
class datatableg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: DataTable(border: TableBorder.all(width: 3),
       columns: [
       DataColumn(label:Text("name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),) ),
       DataColumn(label:Text("age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),) ),
       DataColumn(label:Text("job",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),) ),
       DataColumn(label:Text("salary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),) ),

     ], rows: [
       DataRow(cells: [
         DataCell(Text("anu")),
         DataCell(Text("25")),
         DataCell(Text("doctor")),
         DataCell(Text("10000")),
       ]),
       DataRow(cells: [
         DataCell(Text("ammu")),
         DataCell(Text("25")),
         DataCell(Text("nurse")),
         DataCell(Text("8000")),
       ]),
       DataRow(cells: [
         DataCell(Text("ashok")),
         DataCell(Text("25")),
         DataCell(Text("driver")),
         DataCell(Text("7000")),
       ]),
       DataRow(cells: [
         DataCell(Text("john")),
         DataCell(Text("25")),
         DataCell(Text("worker")),
         DataCell(Text("6000")),
       ])

     ],),
   );
  }

}