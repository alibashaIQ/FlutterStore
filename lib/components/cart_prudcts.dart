import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_the_cart = [
    {
      "name": "Black Dress",
      "picture": "image/products/dress2.jpeg",
      "size": "L",
      "color": "red",
      "quantity": "2",
      "price": 60,
    },
    {
      "name": "Skirt",
      "picture": "image/products/skt1.jpeg",
      "size": "S",
      "color": "red",
      "quantity": "1",
      "price": 40,
    },
    {
      "name": "Pink Skirt",
      "picture": "image/products/skt2.jpeg",
      "price": 60,
      "size": "M",
      "color": "red",
      "quantity": "1"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_Cart_(
            cart_prod_Pic: product_on_the_cart[index]["picture"],
            cart_prod_name: product_on_the_cart[index]["name"],
            cart_prod_Qty: product_on_the_cart[index]["quantity"],
            cart_prod_color: product_on_the_cart[index]["color"],
            cart_prod_price: product_on_the_cart[index]["price"],
            cart_prod_size: product_on_the_cart[index]["size"],
          );
        });
  }
}

class Single_Cart_ extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_Pic;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_Qty;
  Single_Cart_({
    this.cart_prod_Pic,
    this.cart_prod_Qty,
    this.cart_prod_color,
    this.cart_prod_name,
    this.cart_prod_price,
    this.cart_prod_size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //===========   leading section contain the image
        // the image part of cart
        leading: Image.asset(cart_prod_Pic),
        //===========   title section contain the name of product
        title: Text(cart_prod_name),
        //===========   subtitle section contain the size color and prise of product

        subtitle: Column(
          children: <Widget>[
            Row(
              // the size part in cart
              children: <Widget>[
                Padding(padding: EdgeInsets.all(4), child: Text("Size:")),
                Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.red),
                    )),
                // the color part in cart
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                  child: Text("Color:"),
                ),
                Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      cart_prod_color,
                      style: TextStyle(color: Colors.red),
                    )),
                //the part of price in cart
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Text("Price:"),
                ),
                Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      "\$${cart_prod_price}",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )),
                //
              ],
            ),
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            Text("$cart_prod_Qty"),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
        
      ),
    );
  }

}
