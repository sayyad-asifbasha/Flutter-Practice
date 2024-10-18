import 'package:flutter/material.dart';

class Guesturedetection extends StatefulWidget {
  const Guesturedetection({super.key});

  @override
  _GuesturedetectionState createState() => _GuesturedetectionState();
}

class _GuesturedetectionState extends State<Guesturedetection> {
  var _gestueDetails;
  var _painted;
  void _dispalyGesture(String gest)
  {
    setState(() {
      _gestueDetails=gest;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildGuesturedetection(),
                Divider(height: 40,),
                _buildDraggable(),
                Divider(height: 40,),
                _buildDragTarget()

              ],
            ),
          )
      ),
    );
  }

  DragTarget<int> _buildDragTarget()
  {
    return DragTarget<int>(
        onAccept: (colorValue)
        {
           _painted=Color(colorValue);
        },
        builder: (BuildContext context,List<dynamic>acceptedData,List<dynamic>RejectedData)=>
        acceptedData.isEmpty?
          Text("Drag to see color",style: TextStyle(color: _painted),)
              :Text("paintingColor:$acceptedData",style: TextStyle(color: Color(acceptedData[0])),
          )
    );
  }

  Draggable<int> _buildDraggable()
  {
    return Draggable(
        child: Column(
          children: <Widget>[
            Icon(Icons.palette,
            color: Colors.grey,
            size: 40,),
            Text("Drag me to change color"),
          ],
        ),
        childWhenDragging: Icon(Icons.palette,color: Colors.deepOrange,size: 40,),
        feedback: Icon(Icons.brush,
        size: 40,),
        data: Colors.deepOrange.value,
    ) ;
  }

  GestureDetector _buildGuesturedetection()
  {
    return GestureDetector(
      onTap:()
      {
        _dispalyGesture('onTap');
      },
      onDoubleTap:()
      {
        _dispalyGesture('onDoubleTap');
      },
      onLongPress:()
      {
        _dispalyGesture('onLongPress');
      },
      onPanUpdate: (DragUpdateDetails details)
      {
        _dispalyGesture('onPanUpdate :/n$details');
      },
      child: Container(
        color: Colors.green.shade100,
        child:  Column(
          children: <Widget>[
           const  Icon(Icons.alarm,
            size: 100,),
            Text('$_gestueDetails'),
          ],
        ),
      ),
    );
  }
}
