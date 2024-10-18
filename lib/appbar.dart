import 'package:flutter/material.dart';

class Appbar extends StatefulWidget
{
  @override
  _AppBarState createState()=>_AppBarState();
}
class _AppBarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {
            print("Clicked");
          }, icon: const Icon(Icons.menu), color: Colors.white, iconSize: 30,
        ),
        title: const Text("AppBar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print("Clicked on Search button");
            },
            icon: const Icon(Icons.search),
            color: Colors.white,
            iconSize: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: ClipOval(
                child: Image.network(
                  "https://s.ndtvimg.com/images/entities/300/ms-dhoni-700.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
        // flexibleSpace: SafeArea(
        //     child: IconButton
        //       (onPressed: (){
        //         print("Click on Camera");
        //     },
        //       icon: const Icon(Icons.flag_circle,size: 40,),
        //     ),
        // ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.blueGrey,
            child: const Center(
              child: Text("Bottom",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
      body:  Padding(
        padding:  EdgeInsets.all(5.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                 ContainerWithDecorationWidget(),
                Image(image: AssetImage('assets/images/img.jpeg'),
                  // height: 100,
                  width: MediaQuery.of(context).size.width/4,
                  fit:BoxFit.cover,
                ),
                const Padding(padding: EdgeInsets.all(10.0),),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius:10.0 ,
                        offset:Offset(0, 10.0),
                      )
                    ]
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                    labelText: "Enter the text",
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText:  'Enter the notes',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      floatingActionButtonLocation:FloatingActionButtonLocation.endDocked,
      floatingActionButton:  FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.lightGreen,
        // child: IconButton(
        //     onPressed: (){},
        //     icon: const Icon(Icons.message_sharp),
        // ),
        child: PopupMenuButton<ToDoItem>(
            icon: IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded)),
            onSelected: ((valueSelected){
              print('valueSelected :${valueSelected}');
            }),
            itemBuilder: (BuildContext context){
              return menuList.map((ToDoItem item)
              {
                return PopupMenuItem<ToDoItem>
                  (
                    value: item,
                    child: Row(
                      children: <Widget>[
                        Icon(item.icon.icon),
                        Text(item.title),
                      ],
                    )
                );
              }).toList();
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        notchMargin: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Icon(Icons.pause,size: 30,color: Colors.white,),
            const Icon(Icons.play_arrow,size: 30,color:Colors.white),
            PopupMenuButton(
                icon:const Icon(Icons.contact_phone,size: 30,color: Colors.white,),
                onSelected: ((value){
                  print('value:${value.title}');
                }),
                itemBuilder: (BuildContext context)
                {
                    return menuList.map((ToDoItem item)
                    {
                        return PopupMenuItem<ToDoItem>
                          (
                            value: item,
                            child: Row(
                              children: [
                                Icon(item.icon.icon),
                                Text(item.title)
                              ],
                            )
                        );
                    }).toList();
                }),
          ],

        ),
      ),
    );
  }

}

class PopOver extends StatelessWidget {
  const PopOver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ToDoItem>(
        icon: IconButton(onPressed: (){}, icon: const Icon(Icons.message_rounded,size: 30,color: Colors.white,)),
        onSelected: ((valueSelected){
          print('valueSelected :${valueSelected.title}');
        }),
        itemBuilder: (BuildContext context){
          return menuList.map((ToDoItem item)
          {
            return PopupMenuItem<ToDoItem>
              (
                value: item,
                child: Row(
                  children: <Widget>[
                    Icon(item.icon.icon),
                    Text(item.title),
                  ],
                )
            );
          }).toList();
        });
  }
}
class ContainerWithDecorationWidget extends StatelessWidget {
  const ContainerWithDecorationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                Colors.lightBlueAccent,
                Colors.purple
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                blurStyle:BlurStyle.normal,
                offset: Offset(10, 0),
              )
            ],
          ),
          // child:const Center(
          //   child:   Text("Container",
          //     style: TextStyle(
          //       fontSize: 20,
          //       color:Colors.white,
          //     ),
          //   ),
        child:Center(
          child: RichText(
            text:const  TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:"Mahendra",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontStyle:FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text:"Singh",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontStyle:FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text:"Dhoni",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontStyle:FontStyle.italic,
                    decoration:TextDecoration.underline,
                    decorationColor: Colors.green,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                ),

              ],
            ),
        ),
        ),
          ),
      ],
    );
  }
}

class ToDoItem
{
  final String title;
  final Icon icon;
  ToDoItem({required this.title,required this.icon});
}

List<ToDoItem> menuList=[
  ToDoItem(title: 'asif',icon:Icon(Icons.save)),
  ToDoItem(title:'basha',icon:Icon(Icons.headphones)),
];