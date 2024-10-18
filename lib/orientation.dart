import 'package:flutter/material.dart';

class Orentation extends StatefulWidget {
  _OrentationState createState() => _OrentationState();
}

class _OrentationState extends State<Orentation> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SafeArea
          (child: Center(
          child: Text("Orientation"),
        ),
        ),
        backgroundColor: Colors.black12,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // const orientedWidget(),
              OrientationWidget(),
              Divider(height: 20,),
              GridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrientationWidget extends StatelessWidget {
  const OrientationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery
        .of(context)
        .orientation;
    return _orientation == Orientation.portrait
        ? Column (
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Icon(Icons.school, size: 40,),
        const Divider(height: 40.0,),
        Container(
          alignment: Alignment.center,
          color: Colors.greenAccent,
          width: 300,
          height: 200,
          child: const Text("Potarait Mode",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    ) :  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Icon(Icons.school, size: 50,),
        const Icon(Icons.brush, size: 50,),
        const Divider(height: 40.0,),
        Container(
          alignment: Alignment.center,
          color: Colors.lime,
          height: 200,
          width: 400,
          child: const Text("LandScape Mode",
            style: TextStyle(
              fontSize: 20,
            ),
          )
          ,
        )

      ],
    );
  }
}

class GridWidget extends StatelessWidget
{
    const GridWidget({
      super.key,
    });
    @override
  Widget build(BuildContext context){
      Orientation _orientation=MediaQuery.of(context).orientation;
      return GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: _orientation==Orientation.portrait ? 2:4,
        childAspectRatio: 5.0,
        children: List.generate(8, (int index){
          return Text('Grid $index',textAlign: TextAlign.center,);
        }),
      );
  }
}