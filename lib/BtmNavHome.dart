import 'package:first_application/home.dart';
import 'package:flutter/material.dart';
import 'package:first_application/Pages/HomePage.dart';
import 'package:first_application/Pages/Cart.dart';
import 'package:first_application/Pages/Profile.dart';

class NavHome extends StatefulWidget {
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  late int _currentIndex=0;

  // late int _selectedIndex;
  late Widget _currentPage = HomePage();
  List<Widget> page = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    page
      ..add(HomePage())
      ..add(Cart())
      ..add(Profile());
  }

  void _ChangeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = page[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SafeArea(
          child: Center(
            child: Text(
              "Navigation",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white70,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: _currentIndex == 0 ? Colors.black : Colors.grey,
              ),
              backgroundColor:
                  _currentIndex == 0 ? Colors.orangeAccent : Colors.transparent,
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,
                  size: 30,
                  color: _currentIndex == 1 ? Colors.black : Colors.grey),
              backgroundColor:
                  _currentIndex == 1 ? Colors.orangeAccent : Colors.transparent,
              tooltip: "Cart",
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.portrait_outlined,
                size: 30,
                color: _currentIndex == 2 ? Colors.black : Colors.grey,
              ),
              backgroundColor:
                  _currentIndex == 2 ? Colors.orangeAccent : Colors.transparent,
              tooltip: "Profile",
              label: "Profile"),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) => _ChangeTab(index),
      ),
    );
  }
}
