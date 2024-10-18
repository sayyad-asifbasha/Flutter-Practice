import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {

    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: const Text(
          "Layouts",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.cloud_outlined))
        ],
        iconTheme: const IconThemeData(
          size: 20,
          color: Colors.black,
        ),
      ),
      body:Padding(
          padding: EdgeInsets.all(10),
      child:   _buildBody(width),
      )

    );
  }

  SingleChildScrollView _buildBody(double width) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildImage(width),
          SafeArea(
              child: Column(
                   children: <Widget>[
                     _Text1(),
                     Divider(),
                     _weather(),
                     Divider(),
                     _GiftList(),
                     Divider(),
                     _BtmImage()
                   ],
          ),
          ),
        ],
      ),
    );
  }

  Row _BtmImage()
  {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/images.jpeg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/images.jpeg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/images.jpeg'),
          radius: 40.0,
        ),
        SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add,),
              Icon(Icons.import_contacts),
            ],
          ),
        )
      ],
    );
  }

  Wrap _GiftList()
  {
    return Wrap(
      spacing: 8,
      children:List.generate(8, (int index)
      {
        return Chip(
            label:Text('Gift ${index+1}'),
          avatar: const Icon(Icons.card_giftcard,
            color: Colors.blueAccent,
            size: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey,
        );

      },

      )
    );
  }

  Row _weather() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.sunny,
          size: 25,
          color: Colors.orangeAccent,
        ),
        SizedBox(
          width: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "81° Clear",
              style: TextStyle(
                fontSize: 20,
                color: Colors.orangeAccent
              ),
            ),
            Text(
              "4500 San Alpho  Drive,Dallas TX United States",
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }

  Column _Text1() {
    return const Column(
      children: <Widget>[
        Text(
          "My Birthday",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        Divider(),
        Text(
          "It is going to my birthday,We are going out for dinner at my favourite place,then watch a movie after go to galceria for ice cream ",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  Image _buildImage(double width) {
    return Image(
      image: AssetImage('assets/images/img.jpeg'),
      height: 400,
      width:width,
      fit: BoxFit.cover,
    );
  }
}
