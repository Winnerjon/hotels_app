import 'package:flutter/material.dart';
import 'package:hotels_app/pages/home_page.dart';
import 'package:hotels_app/pages/hotel_ui_page.dart';
import 'package:hotels_app/pages/task_ui_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        HotelUIPage.id:(context)=>HotelUIPage(),
        TaskUIPage.id:(context)=>TaskUIPage(),
      },
    );
  }
}
