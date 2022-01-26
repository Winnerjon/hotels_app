import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskUIPage extends StatefulWidget {
  static const String id = "task_ui_page";

  const TaskUIPage({Key? key}) : super(key: key);

  @override
  _TaskUIPageState createState() => _TaskUIPageState();
}

class _TaskUIPageState extends State<TaskUIPage> {
  bool isLiked = false;

  List itemImage = [
    "assets/images/img_0.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  child: FutureBuilder(
                    builder: (context, index) {
                      return PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemImage.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(itemImage[index]),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.black.withOpacity(0.5),
                                    Colors.black.withOpacity(0.3),
                                  ])),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    //#text
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "What kind of hotel you need?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //#textFild
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for hotels...",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 17),
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 15,),
                  Text(
                    "Best Hotels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem("assets/images/img_0.png","Hotel 1"),
                        makeItem("assets/images/img_2.png","Hotel 2"),
                        makeItem("assets/images/img_3.png","Hotel 3"),
                        makeItem("assets/images/img_4.png","Hotel 4"),
                        makeItem("assets/images/img_5.png","Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Best Hotels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem("assets/images/img_5.png","Hotel 1"),
                        makeItem("assets/images/img_3.png","Hotel 2"),
                        makeItem("assets/images/img_4.png","Hotel 3"),
                        makeItem("assets/images/img_0.png","Hotel 4"),
                        makeItem("assets/images/img_2.png","Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Comfort Hotels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem("assets/images/img_3.png","Hotel 1"),
                        makeItem("assets/images/img_4.png","Hotel 2"),
                        makeItem("assets/images/img_0.png","Hotel 3"),
                        makeItem("assets/images/img_5.png","Hotel 4"),
                        makeItem("assets/images/img_2.png","Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem(image,titel) {
    return AspectRatio(
      aspectRatio: 1.4 / 1.6,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )),
        child: Container(
          padding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2),
            ]),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Text(
                  titel,
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite_outlined : Icons.favorite_outline,
                    color: isLiked ? Colors.red : Colors.white,
                    size: 27,
                  ),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
