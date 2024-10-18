import 'package:flutter/material.dart';

class GridExtent extends StatefulWidget {
  const GridExtent({super.key});

  @override
  _GridExtentState createState() => _GridExtentState();
}

class _GridExtentState extends State<GridExtent> {
  List <IconData> _iconsList=[];
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
    return GridView.extent(
      maxCrossAxisExtent: 150,
      scrollDirection:Axis.vertical,
      padding: EdgeInsets.all(5),
      children: List.generate(20, (index)
      {
          return Card(
            child: InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Icon(
                      _iconsList[index],
                      size: 40,
                      color: Colors.green,
                    ),
                 const  Divider(color: Colors.green,),
                  Text('${index+1}',
                  style:const TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                  )
                ],
              ),
              onTap: ()
              {
                print('${index+1}');
              },
            ),
          );
      },
      ),
    );
  }
}
