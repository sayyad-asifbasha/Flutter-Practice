import 'package:flutter/material.dart';
// import 'package:first_application/Widgets/ListView.dart';
// import 'package:first_application/Widgets/SilverWidget.dart';
// import 'package:first_application/Pages/Scaling.dart';
// import 'package:first_application/Widgets/GuestureDetection.dart';
// import 'package:first_application/Widgets/dismissible.dart';
import 'package:first_application/Widgets/platformNative_1.dart';

class Home extends StatefulWidget
{
  @override
  _HomeState createState()=>_HomeState();
}
class _HomeState extends State<Home>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      // appBar: AppBar(
      //   title:const Text("Home page " ),
      //   backgroundColor: Colors.lightGreen,
      // ),
      // body: SafeArea(
      //     child: SingleChildScrollView(
      //       child:  Padding(
      //           padding: const EdgeInsets.all(16.0),
      //         child: Column(
      //           children: <Widget>[
      //             Row(
      //               children: <Widget>[
      //                 Container(
      //                   color: Colors.red,
      //                   height: 100,
      //                   width: 100,
      //                 ),
      //                 Padding(
      //                     padding: EdgeInsets.all(16.0)
      //                 ),
      //                 Expanded(
      //                     child: Container(
      //                       color: Colors.greenAccent,
      //                       height: 10,
      //                       width: 10,
      //                     )),
      //                 Padding(padding:EdgeInsets.all(16.0)),
      //                 Container(
      //                   color: Colors.lightBlue,
      //                   height: 100,
      //                   width: 100,
      //                 )
      //               ],
      //             ),
      //             Padding(padding: EdgeInsets.all(16.0),),
      //             Row(
      //               children: <Widget>[
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: <Widget>[
      //                     Container(
      //                       color: Colors.green,
      //                       height: 100,
      //                       width: 100,
      //                     ),
      //                     Padding(padding: EdgeInsets.all(16.0),),
      //                     Container(
      //                       color: Colors.black87,
      //                       height: 75,
      //                       width: 75,
      //                     ),
      //                     Padding(padding: EdgeInsets.all(16.0),),
      //                     Container(
      //                       color:Colors.purple,
      //                       height: 50,
      //                       width: 50,
      //                     ),
      //                     Divider(),
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: <Widget>[
      //                         CircleAvatar(
      //                           backgroundColor: Colors.greenAccent,
      //                           radius: 100,
      //                           child: Stack(
      //                             children: <Widget>[
      //                               Column(
      //                                 crossAxisAlignment: CrossAxisAlignment.center,
      //                                 mainAxisAlignment: MainAxisAlignment.center,
      //                                 children: <Widget>[
      //                                   Container(
      //                                     height: 50,
      //                                     width: 50,
      //                                     color: Colors.lime,
      //                                   ),
      //                                   Padding(padding: EdgeInsets.all(2.0)),
      //                                   Container(
      //                                     height: 40,
      //                                     width: 40,
      //                                     color: Colors.yellow,
      //                                   ),
      //                                   Padding(padding: EdgeInsets.all(2.0)),
      //                                   Container(
      //                                     height: 30,
      //                                     width: 30,
      //                                     color: Colors.green,
      //                                   ),
      //                                 ],
      //                               )
      //                             ],
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             )
      //
      //           ],
      //         ),
      //       ),
      //     )~
      // ),
      body: SafeArea(
          child: PlatformWidget()
      ),
    );
  }
}