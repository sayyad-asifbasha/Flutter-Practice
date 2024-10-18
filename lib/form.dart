import 'package:flutter/material.dart';

class form extends StatefulWidget
{
  @override
  _ForState createState()=>_ForState();
}
class _ForState extends State<form>
{
  final GlobalKey<FormState> _formStatekey=GlobalKey<FormState>();
  Order order=Order();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu,size: 30,color: Colors.white,
            )
          ,),
        title: const Text("Form Validation",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body:SafeArea(
          child: Column(
            children: <Widget>[
                Form(
                  key: _formStatekey,
                  child: Padding(
                      padding:const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Enter the quantity",
                              border: OutlineInputBorder(),
                            ),
                            style:const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            validator: (value)=> _validateItemRequired(value!),
                            onSaved: (value)=> order.item=value!,
                          ),
                          const Padding(padding:  EdgeInsets.only(left: 0.0,top: 5.0,right: 0.0,bottom: 5.0),),

                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: "Enter the Quantity",
                              border: OutlineInputBorder(),
                            ),
                            style:const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            validator: (value)=>_validataItemCount(value!),
                            onSaved: (value)=> order.quantity=int.tryParse(value!)!,
                          ),
                          const Divider(height: 75.0,),
                          ElevatedButton(
                              onPressed: ()=>_SubmitOrder(),
                              child: const Text("Save"),
                          )
                        ],
                      ),
                  ) ,
                ),
            ],
          )
      ),
    );
  }
  String? _validateItemRequired(String value)
  {
    return value.isEmpty?'Item Required':null;
  }
  String? _validataItemCount(String value)
  {
    int? _valInt = value.isEmpty ? 0: int.tryParse(value);
    return _valInt==0 ?'Atleast one Item is required':null;
  }
  void _SubmitOrder()
  {
    if(_formStatekey.currentState!.validate())
      {
         _formStatekey.currentState?.save();
         print('Order item : ${order.item}');
         print('order Quantity:${order.quantity}');
      }
  }
}

class Order
{
  late String item;
  late int quantity;
}