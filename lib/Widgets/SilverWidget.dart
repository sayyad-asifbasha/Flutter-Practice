import 'package:flutter/material.dart';

class SliverWidget extends StatelessWidget {
  const SliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parallax scrollling"),
      ),
      body: const CustomScrollView(
        slivers: <Widget>[
           SliverAppBaeWidget(),
           SliverListWidget(),
          SliverGridWidger()
        ],
      ),
    );
  }
}

class SliverGridWidger extends StatelessWidget {
  const SliverGridWidger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
        sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((BuildContext context,int index)
            {
              return Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.heart_broken_sharp,color: Colors.red,size: 30,),
                    Divider(),
                    Text("${index+1}")
                  ],
                ),
              );
            },
            childCount: 12),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        )
    );
  }
}

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
          List.generate(3, (int index){
            return ListTile(
              leading:const  Icon(Icons.heart_broken_sharp,
              color: Colors.red,
              ),
              title: Text("${index+1}"),
              trailing:const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.face_2_rounded,color: Colors.yellowAccent,),
              ),
            );
          },)
        ),
    );
  }
}

class SliverAppBaeWidget extends StatelessWidget {
  const SliverAppBaeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blueAccent.shade100,
      forceElevated: true,
      expandedHeight: 250,
      flexibleSpace: const FlexibleSpaceBar(
        title: Text('Parallax Scrolling'),
        background: Image(image: AssetImage('assets/images/img.jpeg'),
        ),
      ),
    );
  }
}
