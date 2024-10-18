import 'package:flutter/material.dart';

class Scaling extends StatefulWidget {
  const Scaling({super.key});

  @override
  _ScalingState createState() => _ScalingState();
}

class _ScalingState extends State<Scaling> {
  Offset _StartLastOffset= Offset.zero;
  Offset _LastOffset=Offset.zero;
  Offset _CurrentOffset=Offset.zero;
  double _lastScale=1.0;
  double _currentScale=1.0;
  void _onScaleStart(ScaleStartDetails details)
  {
    _StartLastOffset=details.focalPoint;
    _lastScale=_currentScale;
    _LastOffset=_CurrentOffset;
  }
  void _onScaleUpdate(ScaleUpdateDetails details)
  {
    if(details.scale!=0)
      {
        double currentScale=_lastScale*details.scale;
        if(currentScale<0)
          {
            currentScale=0.5;
          }
        setState(() {
          _currentScale=currentScale;
        });
      }else if(details.scale==1.0)
        {
          Offset offesetAdjust= (_StartLastOffset-_LastOffset)/_lastScale;

          Offset currentOffest=details.focalPoint-offesetAdjust;
          setState(() {
            _CurrentOffset=currentOffest;
          });
        }
  }

  void _onDoubleTap()
  {
    double currentScale=_lastScale*2;
    if(currentScale>16.0)
      {
        currentScale=1.0;
        _resetValues();
      }
    _lastScale=currentScale;
    setState(() {
      _currentScale=currentScale;
    });
  }
  void _onLongPress()
  {
    setState(() {
      _resetValues();
    });
  }
  void _resetValues()
  {
     _StartLastOffset= Offset.zero;
     _LastOffset=Offset.zero;
     _CurrentOffset=Offset.zero;
     _lastScale=1.0;
     _currentScale=1.0;
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: GestureDetector(
          child: Stack(
            fit: StackFit.expand,
            children:<Widget>[
              _buildTransform(),
              // _buildTransform2(),
              _buildPositioned(context)
            ],
          ),
          onScaleStart: _onScaleStart,
          onScaleUpdate: _onScaleUpdate,
          onDoubleTap: _onDoubleTap,
          onLongPress: _onLongPress,
        ),
      );
  }

  Positioned _buildPositioned(context)
  {
    return Positioned(
      top: 0.0,
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Scale : ${_currentScale.toStringAsFixed(4)}'),
              Text('current :${_CurrentOffset}')
              
            ],
          ),
        )
    );
  }

  Transform _buildTransform2()
  {
    return Transform(
      transform: Matrix4.identity()
        ..scale(_currentScale,_currentScale)
        ..translate(_CurrentOffset.dx,_CurrentOffset.dy), 
      alignment: FractionalOffset.center,
      child: Image(image: AssetImage('assets/images/img.jpeg')),

    );
  }

  Transform _buildTransform()
  {
      return Transform.scale(
        scale: _currentScale,
        child: Transform.translate(
            offset: _CurrentOffset,
            child: Image(image: AssetImage('assets/images/img.jpeg')),
        ),
      );
  }
}
