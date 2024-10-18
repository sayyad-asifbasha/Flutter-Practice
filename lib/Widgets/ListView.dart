import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return headerCard();
            }
            else if (index >= 1 && index <= 3) {
              return CardView();
            }
            else
              {
                return  ListTileView();
              }
          }
      ),
    );
  }
}

class ListTileView  extends StatelessWidget
{
  const ListTileView({super.key,});
  @override
  Widget build(BuildContext context)
  {
    return const  ListTile(
      leading: Icon(Icons.car_repair_outlined,
        size: 20,
        color: Colors.green,
      ),
      title: Text("Flight",
        // textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ),
      subtitle: Text("Flight",
        // textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.grey,
          fontSize: 10,
        ),
      ),
      trailing: Icon(Icons.flight,
        size: 20,
        color: Colors.green,
      ),

    );
  }

}


class CardView extends StatelessWidget {

  const CardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: StadiumBorder(side: BorderSide(color: Colors.black)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.flight,
              size: 20,
              color: Colors.green,
            ),
            title: Text("Flight",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            subtitle: Text("Flight",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.flight,
              size: 20,
              color: Colors.green,
            ),

          ),

        ],
      ),
    );
  }
}

class headerCard extends StatelessWidget {
  const headerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: StadiumBorder(side: BorderSide(color: Colors.black)),
      elevation: 5,
      child: Text(
        "Sayyad Asifbasha",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
