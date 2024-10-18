import 'package:flutter/material.dart';
// import 'package:first_application/DrawerHome.dart';
// import 'package:first_application/TabNavHome.dart';
// import 'package:first_application/BtmAppbar.dart';

// import 'package:first_application/BtmNavHome.dart';
// import 'package:first_application/HeroHome.dart';
// import 'package:first_application/NavigationHome.dart';
// import 'package:first_application/AnimationController.dart';
// import 'package:first_application/annimation.dart';
// import 'package:first_application/orientation.dart';
// import 'package:first_application/form.dart';
import 'package:first_application/home.dart';
// import 'package:first_application/appbar.dart';
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Home(),
    );
  }
}

class ContainerWithDecorationWidget extends StatelessWidget {
  const ContainerWithDecorationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(),
      ],
    );
  }
}