import 'package:flutter/material.dart';

class ballonAnimation extends StatefulWidget {
  const ballonAnimation({super.key});

  @override
  _ballonAnimationState createState() => _ballonAnimationState();
}

class _ballonAnimationState extends State<ballonAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SafeArea(
          child: Text("Ballon"),
        ),
      ),
      body: const staggeBallon(),
    );
  }
}

class animationController extends StatefulWidget {
  const animationController({super.key});

  @override
  _animationControllerState createState() => _animationControllerState();
}

class _animationControllerState extends State<animationController>
    with TickerProviderStateMixin {
  late AnimationController _ControllerFloatUp;
  late AnimationController _ControllerGrowSize;
  late Animation<double> _controllerFloatUp;
  late Animation<double> _controllerGrowUp;

  @override
  void initState() {
    super.initState();
    _ControllerFloatUp =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    _ControllerGrowSize =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));
  }

  @override
  void dispose() {
    _ControllerFloatUp.dispose();
    _ControllerGrowSize.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _bWidth = MediaQuery
        .of(context)
        .size
        .width / 3;
    double _bHeight = MediaQuery
        .of(context)
        .size
        .height / 2;
    double _bLocation = MediaQuery
        .of(context)
        .size
        .height - _bHeight;

    _controllerFloatUp = Tween(begin: _bLocation, end: 0.0).animate(
        CurvedAnimation(
            parent: _ControllerFloatUp, curve: Curves.fastOutSlowIn));
    _controllerGrowUp = Tween(begin: 50.0, end: _bWidth).animate(
        CurvedAnimation(parent: _ControllerGrowSize, curve: Curves.elasticOut));
    _ControllerGrowSize.forward();
    _ControllerFloatUp.forward();
    return AnimatedBuilder(
      animation: _controllerFloatUp,
      builder: (context, child) {
        return Container(
          child: child,
          margin: EdgeInsets.only(
            top: _controllerFloatUp.value,
          ),
          width: _controllerGrowUp.value,
        );
      },
      child: GestureDetector(
        onTap: () {
          if (_ControllerFloatUp.isCompleted) {
            _ControllerFloatUp.reverse();
            _ControllerGrowSize.reverse();
          } else {
            _ControllerGrowSize.forward();
            _ControllerFloatUp.forward();
          }
        },
        child: Image.asset(
          'assets/images/images.jpeg',
          height: _bHeight,
          width: _bWidth,
        ),
      ),
    );
  }
}

class staggeBallon extends StatefulWidget {
  const staggeBallon({super.key});

  @override
  _staggeBallonState createState() => _staggeBallonState();
}

class _staggeBallonState extends State<staggeBallon>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _floatUp;
  late Animation<double> _grewUp;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 10,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _bHeight = MediaQuery
        .of(context)
        .size
        .height;
    double _bWidth = MediaQuery
        .of(context)
        .size
        .width;
    double _bLocation = MediaQuery
        .of(context)
        .size
        .height - _bHeight;

    _floatUp = Tween(begin: _bLocation, end: 0.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
        )
    );
    _grewUp = Tween(begin: 50.0, end: _bWidth).animate(
        CurvedAnimation(parent: _controller,
            curve: Interval(0.0, 1.0, curve: Curves.elasticInOut)
        )
    );
    return AnimatedBuilder(
      animation: _floatUp,
      builder: (context, child) {
        return Container(
          child: child,
          margin: EdgeInsets.only(
            top: _floatUp.value,
          ),
          width: _grewUp.value,
        );
      },
      child: GestureDetector(
          child: Image.asset(
            'assets/images/images.jpeg', height: _bHeight, width: _bWidth,),
          onTap: () {
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
          },
      ),
    );
  }
}
