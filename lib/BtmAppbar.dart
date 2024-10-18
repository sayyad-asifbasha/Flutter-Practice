import 'package:flutter/material.dart';
// import 'package:first_application/Pages/HomePage.dart';
import 'package:first_application/Widgets/GridCount.dart';
import 'package:first_application/Widgets/GridExtent.dart';
import 'package:first_application/Widgets/GridBuilder.dart';

// import 'package:first_application/Pages/Cart.dart';
// import 'package:first_application/Pages/Profile.dart';

class BtmAppBar extends StatefulWidget {
  _BtmNavState createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmAppBar> {
  late int _currentIndex = 0;

  // late int _selectedIndex;
  late Widget _currentPage = GridCount();
  List<Widget> page = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    page..add(GridCount())..add(const GridExtent())..add(Gridbuilder());
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
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.home,
        //           size: 30,
        //           color: _currentIndex == 0 ? Colors.black : Colors.grey,
        //         ),
        //         backgroundColor:
        //         _currentIndex == 0 ? Colors.orangeAccent : Colors.transparent,
        //         label: "Home"),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.shopping_cart,
        //             size: 30,
        //             color: _currentIndex == 1 ? Colors.black : Colors.grey),
        //         backgroundColor:
        //         _currentIndex == 1 ? Colors.orangeAccent : Colors.transparent,
        //         tooltip: "Cart",
        //         label: "Cart"),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.portrait_outlined,
        //           size: 30,
        //           color: _currentIndex == 2 ? Colors.black : Colors.grey,
        //         ),
        //         backgroundColor:
        //         _currentIndex == 2 ? Colors.orangeAccent : Colors.transparent,
        //         tooltip: "Profile",
        //         label: "Profile"),
        //   ],
        //   showSelectedLabels: true,
        //   showUnselectedLabels: false,
        //   currentIndex: _currentIndex,
        //   onTap: (index) => _ChangeTab(index),
        // ),

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: ()
                {
                  _ChangeTab(0);
                },
                icon: Icon(Icons.home_outlined,
                  size: 30,
                  color: _currentIndex == 0 ? Colors.black : Colors.grey,),
              ),
              IconButton(
                onPressed: ()
                {
                  _ChangeTab(1);
                },
                icon: Icon(Icons.shopping_cart_outlined,
                  size: 30,
                  color: _currentIndex == 1 ? Colors.black : Colors.grey,),
              ),
              IconButton(
                onPressed: ()
                {
                  _ChangeTab(2);
                },
                icon: Icon(Icons.account_box,
                  size: 30,
                  color: _currentIndex == 2 ? Colors.black : Colors.grey,),
              ),
              Divider(),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .miniEndDocked,
        floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue.shade200,
              shape:const CircleBorder(side: BorderSide(
                width: 0.0,
                color: Colors.transparent,
              ),
              ),
              child: const Icon(Icons.add,size: 35,color: Colors.white,),
            ) ,
        )

    );
  }
}
