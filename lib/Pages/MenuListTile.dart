import 'package:flutter/material.dart';
import 'package:first_application/Pages/HomePage.dart';
import 'package:first_application/Pages/Profile.dart';
import 'package:first_application/Pages/Cart.dart';

class MenuListTile extends StatefulWidget {
  _ListState createState() => _ListState();
}

class _ListState extends State<MenuListTile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.home_outlined),
            iconColor: Colors.black26,
            title: const Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined),
            iconColor: Colors.black26,
            title: const Text(
              "Cart",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            },
          ),
           ListTile(
            leading: Icon(Icons.person_outline,),
            iconColor: Colors.black26,
            title:  const Text(
              "Profile",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile())
              );
            },
          ),
          const Divider(color: Colors.grey),
          ListTile(
            leading: Icon(Icons.person_outline),
            iconColor: Colors.black26,
            title: const Text(
              "Profile",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
