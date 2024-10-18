import 'package:flutter/material.dart';

//
// class Gratitude extends StatefulWidget {
//   final int radioGroupValue;
//
//   Gratitude({Key? key, required this.radioGroupValue}) : super(key: key);
//
//   @override
//   _GratitudeState createState() => _GratitudeState();
// }
//
// class _GratitudeState extends State<Gratitude> {
//
//   List<String> _GratitudeList = [];
//   late String _seletedGratitude;
//   late int _radioGroupValue;
//
//   void _radioChanged (int index)
//   {
//     setState(() {
//       _radioGroupValue=index;
//       _seletedGratitude=_GratitudeList[index];
//       print('_selectedRadioValue $_seletedGratitude');
//     });
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _GratitudeList..add('Family')..add("Friends")..add("Tea");
//     _radioGroupValue=widget.radioGroupValue;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Gratitude"),
//         actions: <Widget>[
//           IconButton(
//               onPressed: () => {Navigator.pop(context, _seletedGratitude)},
//               icon: Icon(Icons.check))
//         ],
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: <Widget>[
//               Radio(value: 0,
//                   groupValue: _radioGroupValue,
//                   onChanged: (index)=>_radioChanged(0)
//               ),
//               const Text("Family"),
//                Radio(
//                   value: 1,
//                   groupValue: _radioGroupValue,
//                   onChanged:  (index)=>_radioChanged(1)
//               ),
//               const Text("Friends"),
//                Radio(
//                   value: 2,
//                   groupValue: _radioGroupValue,
//                   onChanged:  (index)=>_radioChanged(2)
//               ),
//               const Text("Tea"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class Survey extends StatefulWidget {
  final int  radioGroupValue;
  Survey({Key ?key,required this.radioGroupValue}):super(key:key);
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  List<String> list=[];
  late Map<String,dynamic> map={"index":0,"gender":"male"};
  late int _radioGroupValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _radioGroupValue=widget.radioGroupValue;
    list..add("male")..add("female")..add("gay");
  }
  void RadioChange(index)
  {
    setState(() {
      map["index"]=index;
      map["gender"]=list[index];
      _radioGroupValue=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survey"),
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.pop(context,map);
          }, icon: Icon(Icons.check))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Radio(
                  value: 0,
                  groupValue: _radioGroupValue,
                  onChanged: (index)=>RadioChange(index),
              ),
              const Text("male "),
               Radio(
                value: 1,
                groupValue: _radioGroupValue,
                onChanged:  (index)=>RadioChange(index),
              ),
              const Text("female "),
               Radio(
                value: 2,
                groupValue: _radioGroupValue,
                onChanged:  (index)=>RadioChange(index),
              ),
              const Text("gay "),
            ],
          ),
        ),
      ),
    );
  }
}
