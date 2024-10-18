import 'package:flutter/material.dart';

class About extends StatefulWidget
{
    _aboutState createState()=> _aboutState();
}

class _aboutState extends State<About>
{

  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     appBar: AppBar(
       title: Text("About"),
     ),
     body: Text("About us page"),
   );
  }

}