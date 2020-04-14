import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final pord_detail_name;
  final pord_detail_pic;
  final pord_detail_price;
  final pord_detail_oldprice;
  ProductDetails(
      {this.pord_detail_name,
      this.pord_detail_oldprice,
      this.pord_detail_pic,
      this.pord_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
         
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.pord_detail_pic),
              ),
              footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.pord_detail_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "The Pice of item \$${widget.pord_detail_price}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          // the first button on details screen
          Row(
            children: <Widget>[
              //  the size button in
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "Close",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // the color button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose the Color"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "Close",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // the Qty button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the Quantity"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "Close",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          //the second button
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Buy now"),
                      ),
                      IconButton(
                          icon: Icon(Icons.add_shopping_cart,
                              color: Colors.white),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(),
          ListTile(
            
            title: Text("Product detalis"),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product name",
                  style: TextStyle(color:Colors.grey),
                ),
                
              ),
              Padding(padding: EdgeInsets.all(5),
              child: Text(widget.pord_detail_name,style:TextStyle(color:Colors.grey),),
              )
            ],
          ),
         
           Row(
             
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child:
                 Text(
                  "Product condition",
                  style: TextStyle(color:Colors.grey),
                ),
              ),
                Padding(padding: EdgeInsets.all(5),
              child: Text("New",style:TextStyle(color:Colors.grey),),
              
              )
            ],
          ),
          // similer purduts
          Divider(),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        
                        child: Center(
                        child: Text("Similar product",style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                     
                    ],
                  ),
                ),
              )
            ],
          ),

          Container(
            height: 250,
            child: Similer_poduct(),
          ),

        ],
      ),
    );
  }
}
class Similer_poduct extends StatefulWidget {
  @override
  _Similer_poductState createState() => _Similer_poductState();
}

class _Similer_poductState extends State<Similer_poduct> {
 var productList = [
    
    {
      "name": "Men Shose",
      "picture": "image/products/shoe1.jpg",
      "old_price": 150,
      "price": 100,
    },
    {
      "name": "Black Dress",
      "picture": "image/products/dress2.jpeg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Skirt",
      "picture": "image/products/skt1.jpeg",
      "old_price": 100,
      "price": 40,
    },
    {
      "name": "Pink Skirt",
      "picture": "image/products/skt2.jpeg",
      "old_price": 100,
      "price": 60,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similer_Single_produ(
            prod_name: productList[index]['name'],
            prod_Pic: productList[index]['picture'],
            prod_oldPrice: productList[index]['old_price'],
            prod_price: productList[index]['price'],
          );
        });
  }
}

class Similer_Single_produ extends StatelessWidget {
  final prod_name;
  final prod_Pic;
  final prod_oldPrice;
  final prod_price;
  Similer_Single_produ({
    this.prod_name,
    this.prod_Pic,
    this.prod_oldPrice,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(

                  // the new window that show when enter to productes
                  builder: (context) => new ProductDetails(
                        pord_detail_name: prod_name,
                        pord_detail_oldprice: prod_oldPrice,
                        pord_detail_pic: prod_Pic,
                        pord_detail_price: prod_price,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_Pic,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
