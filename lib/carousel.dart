import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carouseleg(),));
}
class carouseleg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
        options: CarouselOptions(
            height: double.infinity,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            scrollDirection: Axis.horizontal
        ), items: [
          Image(image: AssetImage("asset/image/veg1.jpg")),
          Image(image: AssetImage("asset/image/back1.jpg")),
          Image(image: AssetImage("asset/image/rocky.jpg")),
          Image(image: AssetImage("asset/image/portugal.jpg")),
        ],

        ),
      ),
    );
  }

}