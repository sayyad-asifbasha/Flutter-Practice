import 'package:flutter/material.dart';
import 'package:first_application/Pages/About.dart';
import 'package:first_application/Pages/Cart.dart';
import 'package:first_application/Pages/Profile.dart';

class BtmTabBar  extends StatefulWidget
{
  _TabBarState createState()=> _TabBarState();
}

class _TabBarState extends State<BtmTabBar> with SingleTickerProviderStateMixin
{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
  @override
  void dispose()
  {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        body: SafeArea(
            child: TabBarView(
              controller: _tabController,
                children: [
                  About(),
                  Cart(),
                  Profile(),
                ]
            ),
        ),

        bottomNavigationBar: TabBar(
          controller: _tabController,
            labelColor: Colors.white,
            automaticIndicatorColorAdjustment: true,
            dividerColor: Colors.transparent,
            indicatorSize:  TabBarIndicatorSize.label,
            indicatorWeight: 5.0,
            indicatorPadding:EdgeInsets.only(bottom: 4.0),
            tabs:const [
              Tab(
                icon: Icon(Icons.home_outlined),
              ),
              Tab(
                icon:Icon(Icons.shopping_cart_outlined),
              ),
              Tab(
                icon:Icon(Icons.person_outline),
              )
            ],
        ),
        backgroundColor: Colors.blueAccent.shade100,
      );
  }
}