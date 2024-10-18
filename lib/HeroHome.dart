import 'package:flutter/material.dart';
import 'package:first_application/Pages/Fly.dart';

class HeroHome extends StatefulWidget {
  _HeroState createState() => _HeroState();
}

class _HeroState extends State<HeroHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hero Animation",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.right,
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          child: const Hero(
            tag: 'tag_1',
            child:Icon(Icons.smart_display_outlined,
              size: 120,
              color: Colors.greenAccent,),
          ),
          onTap: (){
            Navigator.push(
              context,
                MaterialPageRoute(builder: (context)=>Fly()
                ),
            );
          },
        ),
      ),
    );
  }
}
