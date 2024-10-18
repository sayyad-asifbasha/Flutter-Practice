import 'package:flutter/material.dart';
import 'package:first_application/Pages/BtmTabBar.dart';
class TabHome extends StatefulWidget
{
  _TabState createState()=> _TabState();
}

class _TabState extends State<TabHome>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const SafeArea(
            child: Center(
              child:Text("Tab Navigation ",
              style: TextStyle(
                color: Colors.white,
              ),
              ) ,
            ),
        ),
        backgroundColor: Colors.blueAccent.shade100,
      ),
      body:SafeArea(
          child: BtmTabBar()),
    );
  }
}