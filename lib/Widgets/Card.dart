import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Card"),
    //     backgroundColor: Colors.yellowAccent.shade100,
    //   ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       Padding(
    //         padding: EdgeInsets.all(16),
    //         child: Card(
    //           color: Colors.grey.shade200,
    //           elevation: 4.0,
    //           shadowColor: Colors.red,
    //           margin: EdgeInsets.all(20.0),
    //           shape:  StadiumBorder(side: BorderSide.none),
    //           child:  Text(
    //             "Sayyad Asifbasha",
    //             textAlign: TextAlign.center,
    //             style: TextStyle(
    //               fontSize: 20,
    //               fontWeight: FontWeight.w300,
    //               height:2,
    //             ),
    //           ),
    //         ),
    //       ),
    //       Card(
    //         color: Colors.grey.shade200,
    //         elevation: 10.0,
    //         margin: EdgeInsets.all(16.0),
    //         shape: OutlineInputBorder(
    //           borderSide: BorderSide(color: Colors.deepOrangeAccent.shade200),
    //         ),
    //         child: const Text(
    //           "Sayyad ",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
    //         ),
    //       ),
    //       Card(
    //         color: Colors.grey.shade200,
    //         elevation: 10.0,
    //         margin: EdgeInsets.all(16.0),
    //         shape: UnderlineInputBorder(
    //           borderSide: BorderSide(color: Colors.red.shade100),
    //         ),
    //         child: const Text(
    //           " Asifbasha",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          elevation: 5,
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent),
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
          child: ListTile(
            leading: Icon(
              Icons.flight_outlined,
              color: Colors.grey,
              size: 25,
            ),
            title: Text(
              "Air Go",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              "HYD - BGLR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            trailing: Icon(
              Icons.bookmark_border,
              color: Colors.grey,
              size: 25,
            ),
          ),
          // child: const Column(
          //   children: [
          //     ListTile(
          //       leading: Icon(
          //         Icons.flight_outlined,
          //         color: Colors.grey,
          //         size: 12,
          //       ),
          //       title: Text(
          //         "Air Go",
          //         style: TextStyle(
          //           color:Colors.black26,
          //           fontSize: 16,
          //         ),
          //       ),
          //       subtitle: Text(
          //         "HYD - BGLR",
          //         style: TextStyle(
          //           color:Colors.grey,
          //           fontSize: 8,
          //         ),
          //       ),
          //       trailing:Icon(
          //         Icons.bookmark_border,
          //         color: Colors.grey,
          //         size: 12,
          //       ),
          //     ),
          //     ListTile(
          //       leading: Icon(
          //         Icons.flight_outlined,
          //         color: Colors.grey,
          //         size: 12,
          //       ),
          //       title: Text(
          //         "Air Go",
          //         style: TextStyle(
          //           color:Colors.black26,
          //           fontSize: 16,
          //         ),
          //       ),
          //       subtitle: Text(
          //         "HYD - BGLR",
          //         style: TextStyle(
          //           color:Colors.grey,
          //           fontSize: 8,
          //         ),
          //       ),
          //       trailing:Icon(
          //         Icons.bookmark_border,
          //         color: Colors.grey,
          //         size: 12,
          //       ),
          //     ),
          //     ListTile(
          //       leading: Icon(
          //         Icons.flight_outlined,
          //         color: Colors.grey,
          //         size: 12,
          //       ),
          //       title: Text(
          //         "Air Go",
          //         style: TextStyle(
          //           color:Colors.black26,
          //           fontSize: 16,
          //         ),
          //       ),
          //       subtitle: Text(
          //         "HYD - BGLR",
          //         style: TextStyle(
          //           color:Colors.grey,
          //           fontSize: 8,
          //         ),
          //       ),
          //       trailing:Icon(
          //         Icons.bookmark_border,
          //         color: Colors.grey,
          //         size: 12,
          //       ),
          //     ),
          //   ],
          // ),
        ),
        Card(
          elevation: 8,
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent),
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
          child: ListTile(
            leading: Icon(
              Icons.flight_outlined,
              color: Colors.grey,
              size: 25,
            ),
            title: Text(
              "Air Go",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              "HYD - BGLR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            trailing: Icon(
              Icons.bookmark_border,
              color: Colors.grey,
              size: 25,
            ),
          ),
        ),
        Card(
          elevation: 8,
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent),
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
          child: ListTile(
            leading: Icon(
              Icons.flight_outlined,
              color: Colors.grey,
              size: 25,
            ),
            title: Text(
              "Air Go",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              "HYD - BGLR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            trailing: Icon(
              Icons.bookmark_border,
              color: Colors.grey,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
