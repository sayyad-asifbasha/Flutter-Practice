import 'package:flutter/material.dart';


class Profile extends StatefulWidget
{
  _ProfileState createState()=> _ProfileState();
}

class _ProfileState extends State<Profile>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Icon(Icons.portrait_outlined,
            size: 40,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}
