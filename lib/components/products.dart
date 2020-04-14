import 'package:flutter/material.dart';
import 'package:storetest1/pages/product_detiles.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Men suit",
      "picture": "image/products/blazer1.jpeg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Women suit",
      "picture": "image/products/blazer2.jpeg",
      "old_price": 100,
      "price": 60,
    },
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
          return Single_prod(
            prod_name: productList[index]['name'],
            prod_Pic: productList[index]['picture'],
            prod_oldPrice: productList[index]['old_price'],
            prod_price: productList[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_Pic;
  final prod_oldPrice;
  final prod_price;
  Single_prod({
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
