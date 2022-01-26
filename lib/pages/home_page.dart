import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotels_app/pages/hotel_ui_page.dart';
import 'package:hotels_app/pages/task_ui_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onPressed: (){
                Navigator.pushNamed(context, HotelUIPage.id);
              },
              child: Text("Hotel UI",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onPressed: (){
                Navigator.pushNamed(context, TaskUIPage.id);
              },
              child: Text("Task UI",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
