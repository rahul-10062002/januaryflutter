import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:januaryflutter/mini%20project/dummy%20news.dart';


class homemini extends StatefulWidget {
  @override
  State<homemini> createState() => _homeminiState();
}

class _homeminiState extends State<homemini> {
  static List<news> news_list = [
    news("currents affairs", "politics",
        "on india lokh sabha elections are declared and dates are announced after 6 stages the results will be declared on june 4"),
    news("economics", "indian currency",
        "indian currency has been make great increment on trade and growth against us dollars"),
    news("health", "flue makes thread",
        "recent reports makes that on rainy season there is a rapid spread of flue in our country so awareness should be taken seriously and instructions to states"),
    news("education", "new education criteria",
        "central government has been declared in 2025 there will be a new education criteria and that will be great change in education system"),
    news("sports", "fifa world cup",
        "argentina has lifted the fifa world cup in final against france messi has fulfilled his dream said on his post meeting"),
  ];
  List<news> display_news = List.from(news_list);

  void updateList(String value) {
    setState(() {
      display_news = news_list
          .where((element) =>
              element.news_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("news app",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),centerTitle: true,),
      body: Column(
        children: [
          Text(
            "search your news",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) => updateList(value),
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff302360),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                hintText: "eg:current affairs",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: display_news.length == 0 ? Center(child: Text("no results found",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),):ListView.builder(
                  itemCount: display_news.length,
                  itemBuilder: (context, index) => Container(
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          display_news[index].news_title!,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${display_news[index].news_desc!}",
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Text(
                          "${display_news[index].news_subtitle!}",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ))
          )],
      ),
    );
  }
}
