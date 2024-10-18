// import 'package:flutter/material.dart';
//
// class animation extends StatefulWidget
// {
//    _AnimationState createState()=>_AnimationState();
// }
//
// class _AnimationState extends State<animation>
// {
//     double _height=100.0;
//     double _width=100;
//     _increaseWidth()
//     {
//       setState(() {
//         _width=_width>320?100:_width+=50;
//       });
//     }
//     @override
//   Widget build(BuildContext context)
//     {
//       return Scaffold(
//         appBar: AppBar(
//           title: const SafeArea(
//               child:Text("Animations"),),
//           backgroundColor: Colors.orangeAccent,
//    ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             AnimatedContainer(
//               duration: const Duration(microseconds: 500),
//               curve: Curves.easeInExpo,
//               width: _width,
//               height: _height,
//               color: Colors.amber,
//               child: TextButton(onPressed: ()=>_increaseWidth(),
//                   child: Text("Click to Increase $_width",)
//               ),
//             ),
//           ],
//         ),
//       );
//     }
// }


// Cross fade animations


import 'package:flutter/material.dart';


class FadeAnimation extends StatefulWidget {
  const FadeAnimation({super.key});

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const SafeArea(
            child: Text("Fade Animations",
              style: TextStyle(fontSize: 20,color: Colors.black87),
            ),
        ),
        backgroundColor: Colors.brown,
      ),
      body:const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          animatedWidget(),
          Divider(height: 200,),
          animatedWidget()
        ],
      ),
    );
  }
}


class animatedWidget extends StatefulWidget
{
  const animatedWidget({
    super.key,
});

  @override
  State<animatedWidget> createState() => _animatedWidgetState();
}

class _animatedWidgetState extends State<animatedWidget> {
  bool _crossFadeShow=true;
  bool _opacityShow=true;


  void _crossFade()
  {
    setState(() {
      _crossFadeShow=!_crossFadeShow;
    });
  }

  void _changeOpacity()
  {
    setState(() {
      _opacityShow=!_opacityShow;
    });
  }
  @override
  Widget build(BuildContext context)
  {
      return Row(
        children: <Widget>[
         Stack(
           alignment: Alignment.center,
           children: [
             // AnimatedCrossFade(
             //   duration:const  Duration(milliseconds: 1000),
             //   sizeCurve: Curves.easeInCirc,
             //   crossFadeState: _crossFadeShow?CrossFadeState.showFirst:CrossFadeState.showSecond,
             //    firstChild: Container(
             //      color: Colors.amber,
             //      height: 100,
             //      width: 100,
             //    ),
             //   secondChild: Container(
             //     color: Colors.greenAccent,
             //     height: 200,
             //     width: 200,
             //   ),
             // ),
             // Positioned.fill(child: TextButton(onPressed: ()=>_crossFade(),
             //     child: const Text("Fade")),
             // )
             AnimatedOpacity(
                 opacity: _opacityShow?1.0:0.5,
                 duration: const Duration(milliseconds: 100),
               curve: Curves.bounceInOut,
               child: Container(
                 height: 100,
                 width: 100,
                 color: _opacityShow?Colors.black45:Colors.black12,
                 child: TextButton(onPressed: ()=>_changeOpacity(),
                   child: const Text("opacity"),
                 ),
               ),
             ),


           ],
         )
        ],
      );
  }
}