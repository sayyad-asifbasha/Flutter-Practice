import 'package:flutter/material.dart';

class dismiss extends StatefulWidget {
  const dismiss({super.key});


  @override
  _dismissState createState() => _dismissState();
}
class Trip
{
   String id;
   String name;
   String location;
  Trip({ required this.location, required this.id, required this.name});
}
class _dismissState extends State<dismiss> {

   final List<Trip> _trips=[];
   @override
   void initState()
   {
     super.initState();
     _trips..add(Trip(id: '0', name: 'Rome', location: 'Italy'))
       ..add(Trip(id: '1', name: 'Paris', location: 'France'))
       ..add(Trip(id: '2', name: 'New York', location: 'USA - New York'))
       ..add(Trip(id: '3', name: 'Cancun', location: 'Mexico'))
       ..add(Trip(id: '4', name: 'London', location: 'England'))
       ..add(Trip(id: '5', name: 'Sydney', location: 'Australia'))
       ..add(Trip(id: '6', name: 'Miami', location: 'USA - Florida'))
       ..add(Trip(id: '7', name: 'Rio de Janeiro', location: 'Brazil'))
       ..add(Trip(id: '8', name: 'Cusco', location: 'Peru'))
       ..add(Trip(id: '9', name: 'New Delhi', location: 'India'))
       ..add(Trip(id: '10', name: 'Tokyo', location: 'Japan'));
   }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _trips.length,
          itemBuilder: (BuildContext context,int index)
          {
              return Dismissible(
                  key: Key(_trips[index].id),
                  child: buildListTile(index),
                background: complete(),
                secondaryBackground: delete(),
                onDismissed: (DismissDirection direction)
                {
                  direction==DismissDirection.startToEnd?print("hello"):print("bye");
                  setState(() {
                    _trips.removeAt(index);
                  });
                }
              );
          }
      ),
    );
  }

   Container delete()
   {
     return Container(
       color: Colors.red,
       child: Padding(
           padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete,color: Colors.white,)
              ],
            ),
       ),
     );
   }

   ListTile buildListTile(int index)
   {
     return ListTile(
       title: Text(_trips[index].name),
       subtitle:Text(_trips[index].location) ,
       leading: Icon(Icons.flight,size: 30,color: Colors.black,),
       trailing: Icon(Icons.free_breakfast_outlined,size:30,color:Colors.black),
     );
   }
}

class complete extends StatelessWidget {
  const complete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
          padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.done,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
