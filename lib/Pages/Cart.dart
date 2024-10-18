import 'package:flutter/material.dart';


class Cart extends StatefulWidget
{
  _CartState createState()=> _CartState();
}

class _CartState extends State<Cart>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Icon(Icons.shopping_cart_outlined,
            size: 40,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}
