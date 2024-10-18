import 'package:flutter/material.dart';

class GridCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(0),
        children: List.generate(100, (index)
        {
          return Card(
            margin: EdgeInsets.all(5),
            elevation: 5,
            child:InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.account_box,
                    color: Colors.blueAccent,
                    size: 40,
                  ),
                 const  Divider(),
                  Text('${index+1}',
                  style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                  )
                ],
              ),
            ),
          );
        },
        ),
    );
  }
}
