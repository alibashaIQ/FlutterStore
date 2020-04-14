import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//  my files import
import 'package:storetest1/components/horizontal_listview.dart';
import 'package:storetest1/components/products.dart';
import 'package:storetest1/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //     slide image widget
    Widget image_careousel = new Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("image/w3.jpeg"),
          AssetImage("image/c1.jpg"),
          AssetImage("image/m1.jpeg"),
          AssetImage("image/w1.jpeg"),
          AssetImage("image/w4.jpeg"),
        ],
        // autoplay: false,
        animationCurve: Curves.bounceIn,
        animationDuration: Duration(microseconds: 2000),
        dotSize: 4,
        indicatorBgPadding: 6,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "Shop App",
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          )
        ],
      ),
      //the side that show the user and email and sitting
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          //     the header that contain the user and email
          UserAccountsDrawerHeader(
            accountName: Text(
              "Ali Bahsa",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text("programmer_alibasha@yahoo.com",
                style: TextStyle(color: Colors.white)),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          // the body

          InkWell(
            onTap: () {},
            child: ListTile(
                title:
                    Text("Home Page", style: TextStyle(color: Colors.black87)),
                leading: Icon(
                  Icons.home,
                  color: Colors.black87,
                )),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
                title:
                    Text("My Account", style: TextStyle(color: Colors.black87)),
                leading: Icon(
                  Icons.person,
                  color: Colors.black87,
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
            child: ListTile(
                title:
                    Text("My Cart", style: TextStyle(color: Colors.black87)),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black87,
                )),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
                title:
                    Text("Favorites", style: TextStyle(color: Colors.black87)),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black87,
                )),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
                title:
                    Text("settings", style: TextStyle(color: Colors.black87)),
                leading: Icon(
                  Icons.settings,
                  color: Colors.black87,
                )),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
                title: Text("Help", style: TextStyle(color: Colors.black87)),
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.blue,
                )),
          )
        ],
      )),
      body: ListView(
        children: <Widget>[
          // slide image called function
          image_careousel,
          //        Categories padding
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "Categories",
              style: TextStyle(color: Colors.red),
            ),
          ),
          //  horizantel Categories list

          HorizontalList(),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
            child: Text(
              "Recent products",
              style: TextStyle(color: Colors.red),
            ),
          ),
          // producte view
          Container(
            height: 220,
            child: Products(),
          )
        ],
      ),
    );
  }
}
