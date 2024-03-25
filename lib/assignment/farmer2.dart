import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/home.dart';
void main(){
  runApp(MaterialApp(home: shop(),));
}
class shop extends StatefulWidget{
  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  int index=1;
  var img=["asset/image/veg1.jpg","asset/image/veg2.jpg","asset/image/veg3.jpg","asset/image/veg1.jpg","asset/image/veg2.jpg","asset/image/veg3.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FARMERS FRESH HERE"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.location_on))
        ],
        backgroundColor: Colors.green[500],
        bottom: AppBar(
          title: Container(
            child: Card(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "search here", prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          backgroundColor: Colors.green[500],
        ),),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([
            Column(
              children: [
                Container(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                            child: Center(child: Text("vegetables")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                            child: Center(child: Text("fruits")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 30,
                            width:80,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                            child: Center(child: Text("others")),
                          ),
                        ),
                      ],
                    )
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 300,
                      aspectRatio: 16/9,
                      viewportFraction: 0.3,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.bounceIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.7,
                      scrollDirection: Axis.horizontal

                  ), items: [
                  Image(image: AssetImage("asset/image/veg1.jpg")),
                  Image(image: AssetImage("asset/image/trondhiem.jpg")),
                  Image(image: AssetImage("asset/image/portugal.jpg")),
                  Image(image: AssetImage("asset/image/havasu.jpg")),
                ],
                ),
                Container(
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.grey,),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Icon(Icons.timer),
                            Text("30 min policy")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Icon(Icons.contacts_sharp),
                            Text("Tracebility")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Icon(Icons.house),
                            Text("local surrounding")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 330),
                    child: Text("shop by category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                )
              ],
            ),
          ]
          )
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate((context, index) {
          return Card(
            child: Container(
              height: 40,
              width:80,
              child: Image(image: AssetImage(img[index]),fit: BoxFit.fill,),
            ),
          );
          },childCount: img.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
          ))
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
    unselectedItemColor: Colors.orange,
    selectedItemColor: Colors.blue,
    currentIndex: index,
    onTap: (tabindex) {
      setState(() {
        index = tabindex;
      });
    }, items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
    BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "account")
    ],
    ),);
  }

}
