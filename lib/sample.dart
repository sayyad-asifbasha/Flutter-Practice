// import 'package:first_application/sample.dart';
// import 'package:flutter/material.dart';
//
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
// //         useMaterial3: true,
// //       ),
// //       home: const MyHomePage(title: 'Hello'),
// //     );
// //   }
// // }
// //
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});
// //
// //   final String title;
// //
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
// //
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //     title: Text(widget.title),
// //     ),
// //
// //     // body: Container(
// //     //   width: 100,
// //     //   height: 100,
// //     //   color: Colors.limeAccent,
// //     //   child: Text("Hello "),
// //     // ),
// //       body: Center(
// //         child: Theme(
// //             data: Theme.of(context).copyWith(cardColor: Colors.limeAccent),
// //             child: Card(
// //               child: Text('Copy '),
// //             ),
// //         ),
// //       ),
// //     );
// //
// //   }
// // }
// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
// //         useMaterial3: true,
// //       ),
// //       home: MyBid(), // Set MyBid as the home widget
// //     );
// //   }
// // }
// //
// // class MyBid extends StatefulWidget {
// //   const MyBid({super.key});
// //
// //   @override
// //   _MyBidState createState() => _MyBidState();
// // }
// //
// // class _MyBidState extends State<MyBid> {
// //   double bidAmt = 0.0;
// //
// //   void increaseBid() {
// //     setState(() {
// //       // Add $50 to the current bid
// //       bidAmt += 50.0;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) => Scaffold(
// //       appBar: AppBar(
// //         title: const Text('My Bid App'),
// //       ),
// //       body: Center( // Center the content vertically and horizontally
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             Text(
// //               'My Bid Amount: \$${bidAmt.toStringAsFixed(2)}', // Display bidAmt
// //               style: const TextStyle(fontSize: 20),
// //             ),
// //             const SizedBox(height: 20),
// //             TextButton.icon(
// //               onPressed: increaseBid, // Correct function call
// //               icon: const Icon(Icons.add_circle),
// //               label: const Text('Increase Bid'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// // }
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: MyBid(), // Set MyBid as the home widget
//     );
//   }
// }

import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title:const Text("Home page " ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  RowWidget(),
                  Padding(padding: EdgeInsets.all(16.0),),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            color: Colors.green,
                            height: 100,
                            width: 100,
                          ),
                          Padding(padding: EdgeInsets.all(16.0),),
                          Container(
                            color: Colors.black87,
                            height: 75,
                            width: 75,
                          ),
                          Padding(padding: EdgeInsets.all(16.0),),
                          Container(
                            color:Colors.purple,
                            height: 50,
                            width: 50,
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.greenAccent,
                                radius: 100,
                                child: Stack(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 50,
                                          width: 50,
                                          color: Colors.lime,
                                        ),
                                        const Padding(padding: EdgeInsets.all(2.0)),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          color: Colors.yellow,
                                        ),
                                        const  Padding(padding: EdgeInsets.all(2.0)),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          color: Colors.green,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
        const Padding(
            padding: EdgeInsets.all(16.0)
        ),
        Expanded(
            child: Container(
              color: Colors.greenAccent,
              height: 10,
              width: 10,
            )),
        const Padding(padding: EdgeInsets.all(16.0)),
        Container(
          color: Colors.lightBlue,
          height: 100,
          width: 100,
        )
      ],
    );
  }
}