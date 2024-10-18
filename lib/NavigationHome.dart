import 'package:flutter/material.dart';
import 'package:first_application/Pages/About.dart';
import 'package:first_application/Pages/gratitude.dart';

class NavigationHome extends StatefulWidget {
  _navigationState createState() => _navigationState();
}

class _navigationState extends State<NavigationHome> {
  late String response;
  Map<String, dynamic> _details = {"index": -1, "gender": "..."};

  void _openAbout({BuildContext? context, bool fullscreenDialog = false}) {
    Navigator.push(
        context!,
        MaterialPageRoute(
          builder: (context) => About(),
        ));
  }

  void _openSurvey({BuildContext? context, fullscreenDialog = false}) async {
    final Map<String, dynamic> res = await Navigator.push(
        context!,
        MaterialPageRoute(
          builder: (context) => Survey(
            radioGroupValue: _details['index'],
          ),
        ));
    setState(() {
    _details['index'] = res["index"];
    _details["gender"] = res["gender"];

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
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () => _openAbout(
                    context: context,
                    fullscreenDialog: true,
                  ),
              icon: const Icon(
                Icons.info_outline,
                size: 30,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child:  Center(
          child: Text("Hello ${_details["gender"]}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openSurvey(context: context, fullscreenDialog: true),
        child: const Icon(
          Icons.radio_button_checked_outlined,
          size: 30,
        ),
      ),
    );
  }
}
