import 'package:flutter/material.dart';


class HomePage extends StatefulWidget
{
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: SafeArea(
          child: Center(
            child: Icon(Icons.home_outlined,
            size: 40,
              color: Colors.orangeAccent,
            ),
          ),
      ),
    );
  }
}
