import 'package:flutter/material.dart';

class Fly extends StatefulWidget {
  _FlyState createState() => _FlyState();
}

class _FlyState extends State<Fly> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.shortestSide/2;
    return Scaffold(
      appBar: AppBar(title: Text("hero")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: GestureDetector(
            // child: Align(
            //   alignment:Alignment.center,
            //   child: IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.smart_display_outlined,
            //       size: _width,
            //       color: Colors.greenAccent,
            //     ),
            //   ),
            // )
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "tag_1",
                      child: Icon(
                        Icons.smart_display_outlined,
                        size: _width,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Container(
                      child: const Text(
                        "abcdefghijklmnopqrstuvwxyz",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
