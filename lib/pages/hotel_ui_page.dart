import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HotelUIPage extends StatefulWidget {
  static const String id = "hotel_ui_page";

  const HotelUIPage({Key? key}) : super(key: key);

  @override
  _HotelUIPageState createState() => _HotelUIPageState();
}

class _HotelUIPageState extends State<HotelUIPage> {
  bool _enabled = true;
  int isShimmir = 1;
  CarouselController buttonCarouselController = CarouselController();

  List itemImage = [
    "assets/images/img_0.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
  ];

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    Timer(Duration(seconds: 5),(){
      isShimmir = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Stack(
              children: [
                Container(
                  height: 300,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 16/9,
                        viewportFraction: 1.0,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3,),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: itemImage
                          .map((item) => Container(
                        child: Container(
                            child:
                            Image.asset(item, fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height,)),
                      ))
                          .toList(),
                    )),
                Container(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        alignment: Alignment.center,
                        child: Text(
                          "What kind of hotel you need?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: TextField(
                          style: TextStyle(color: Colors.black, fontSize: 20),
                          decoration: InputDecoration(
                            hintText: "Search for hotels...",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 17),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // #body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Hotels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        makeItem("assets/images/img_5.png", "Hotel 1"),
                        makeItem("assets/images/img_3.png", "Hotel 2"),
                        makeItem("assets/images/img_4.png", "Hotel 3"),
                        makeItem("assets/images/img_2.png", "Hotel 4"),
                        makeItem("assets/images/img_0.png", "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Luxury Hotels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        makeItem("assets/images/img_0.png", "Hotel 1"),
                        makeItem("assets/images/img_2.png", "Hotel 2"),
                        makeItem("assets/images/img_3.png", "Hotel 3"),
                        makeItem("assets/images/img_4.png", "Hotel 4"),
                        makeItem("assets/images/img_5.png", "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Five Star Hotels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        makeItem("assets/images/img_2.png", "Hotel 1"),
                        makeItem("assets/images/img_0.png", "Hotel 2"),
                        makeItem("assets/images/img_5.png", "Hotel 3"),
                        makeItem("assets/images/img_4.png", "Hotel 4"),
                        makeItem("assets/images/img_3.png", "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem(image, titel) {
    return (isShimmir == 0) ? Shimmer.fromColors(
      baseColor: Colors.grey.shade700,
      highlightColor: Colors.grey.shade500,
      child: AspectRatio(
        aspectRatio: 1.4/1,
        child: Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ): AspectRatio(
      aspectRatio: 1.4 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              titel,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
