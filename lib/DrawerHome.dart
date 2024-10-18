import 'package:flutter/material.dart';
import 'package:first_application/Widgets/LeftDrawer.dart';
import 'package:first_application/Widgets/RightDrawer.dart';

class DrawerHome extends StatefulWidget
{
  _DrawerState createState()=>  _DrawerState();
}

class _DrawerState extends State<DrawerHome>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(
          title: const SafeArea(
              child: Text(
                'Drawer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ),
        ),
        drawer:const LeftDrawer(),
        endDrawer: const RightDrawer(),
      );
  }
}