import 'package:flutter/material.dart';

class Stackwidget1 extends StatelessWidget {
  const Stackwidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/images/img.jpeg'),
              ),
              Positioned(
                  top: 0,
                right: 0,
                  child:const CircleAvatar(
                    radius: 50,
                    backgroundImage:AssetImage('assets/images/images.jpeg'),
                  ),
    ),
              Positioned(
                  bottom: 30,
                  child: Text(
                    "K L Rahul",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white54,
                    ),
                  ),
                  ),
            ],
          ),
      ),
    );
  }
}
