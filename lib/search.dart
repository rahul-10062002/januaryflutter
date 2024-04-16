import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: searcheg(),
  ));
}

class searcheg extends StatefulWidget {
  @override
  State<searcheg> createState() => _searchegState();
}

class _searchegState extends State<searcheg> {
  List<String> allitems = [
    "apple",
    "banana",
    "orange",
    "dragon fruit",
    "guava",
    "grape",
    "watermellon",
    "sappota",
    "raspberry"
  ];

  String searchText = "";
  String searchResult = "";

  void filterItems(String query) {
    setState(() {
      searchText = query;
      searchResult = "";
    });
  }

  void setsearchResult(String result) {
    setState(() {
      searchResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> resultItems = allitems
        .where((item) => item.toLowerCase().contains(searchText.toLowerCase()))
        .toList();

    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              filterItems(value);
            },
            decoration: InputDecoration(
                hintText: "search", suffixIcon: Icon(Icons.search)),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: resultItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(resultItems[index]),
                    onTap: () {
                      setsearchResult(resultItems[index]);
                    },
                  );
                }),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "search result:$searchResult",
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
