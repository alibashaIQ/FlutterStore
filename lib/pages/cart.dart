import 'package:flutter/material.dart';
//my import
import 'package:storetest1/components/cart_prudcts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color:Colors.white,
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(child: 
            ListTile(
              title: Text("Total:"),
              subtitle: Text("\$230"),
            )
            ),
            Expanded(child: 
            MaterialButton(onPressed: (){},
            child: Text("Check out",style: TextStyle(color: Colors.white),),
            color: Colors.red,
            )
            )
          ],
        ),
      ),
    );
  }
}
