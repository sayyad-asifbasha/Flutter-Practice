import 'package:flutter/material.dart';

class Gridbuilder extends StatefulWidget {

  @override
  _GridbuilderState createState() => _GridbuilderState();
}

class _GridbuilderState extends State<Gridbuilder> {
  late List<IconData> _iconsList =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _iconsList
      ..add(Icons.free_breakfast)
      ..add(Icons.access_alarms)
      ..add(Icons.directions_car)
      ..add(Icons.flight)
      ..add(Icons.cake)
      ..add(Icons.card_giftcard)
      ..add(Icons.change_history)
      ..add(Icons.face)
      ..add(Icons.star)
      ..add(Icons.headset_mic)
      ..add(Icons.directions_walk)
      ..add(Icons.sentiment_satisfied)
      ..add(Icons.cloud_queue)
      ..add(Icons.exposure)
      ..add(Icons.gps_not_fixed)
      ..add(Icons.child_friendly)
      ..add(Icons.child_care)
      ..add(Icons.edit_location)
      ..add(Icons.event_seat)
      ..add(Icons.lightbulb_outline);
  }
  @override
  Widget build(BuildContext context) {
   return GridView.builder(
     itemCount: 20,
       padding: EdgeInsets.all(15.0),
       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150.0),
       itemBuilder:(BuildContext context,int index)
       {
          return Card(
            margin:EdgeInsets.all(10.0),
            child: InkWell(
              child: Column(
                children: <Widget>[
                  Icon(
                    _iconsList[index],
                    color: Colors.green,
                    size: 60,
                  ),
                  Divider(),
                  Text(
                   ' ${index+1
                   }',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          );
       }
   );

  }
}