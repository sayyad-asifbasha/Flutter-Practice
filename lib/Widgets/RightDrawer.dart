import 'package:flutter/material.dart';
import 'package:first_application/Pages/MenuListTile.dart';
class RightDrawer extends StatelessWidget
{
  const RightDrawer({Key ?key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      child: ListView(
        padding:EdgeInsets.zero,
        children:  <Widget>[
          const DrawerHeader(
                child: Icon(Icons.face,
                color: Colors.blueAccent,
                size: 50,),
            ),
          MenuListTile()
        ],
      ),
    );
  }
}