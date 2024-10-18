import 'package:flutter/material.dart';
import 'package:first_application/Pages/MenuListTile.dart';
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
     Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top:25.0),
        children:<Widget>[
           const UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.face,
                size: 20,
                color: Colors.white,
              ),
              accountName:  Text(
                "Sayyad Asifbasha",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12.0,
                ),
              ),
              accountEmail: Text(
                "asifbasha4873@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12.0,
                ),
              ),
             otherAccountsPictures: <Widget>[
               Icon(
                 Icons.bookmark_border,
                 color: Colors.white,
               )
             ],
             decoration: BoxDecoration(
               image: DecorationImage(
                 image:AssetImage( "assets/images/img.jpeg"),
                 fit:BoxFit.cover,
               ),
             ),
           ),
          MenuListTile(),
        ],
      ),
    );
  }
}
