import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: datepickereg(),));
}
class datepickereg extends StatefulWidget{
  @override
  State<datepickereg> createState() => _datepickeregState();
}

class _datepickeregState extends State<datepickereg> {
  DateTime selectdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: TextField(
         controller: TextEditingController(text: "${selectdate.toLocal()}"),
         readOnly: true,
         onTap:()=>selecteddate(context),
         decoration: InputDecoration(hintText: "select date",suffixIcon: Icon(Icons.calendar_month)),
       ),
     ),
   );
  }
  Future<void>selecteddate(BuildContext context)async{
    final DateTime? Pickdate=await showDatePicker(context: context, firstDate: DateTime(2022), lastDate: DateTime(2025));
    if(Pickdate!=null && Pickdate !=selectdate){
      setState(() {
        selectdate=Pickdate;
      });
    }
  }
}