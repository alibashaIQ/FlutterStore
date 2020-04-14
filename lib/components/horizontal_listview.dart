import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "image/cats/tshirt.png",
            image_caption: "T Shirts",
          ),
           Category(
            image_location: "image/cats/dress.png",
            image_caption: "Dress",
          ),
           Category(
            image_location: "image/cats/formal.png",
            image_caption: "Formal",
          ),
          
           Category(
            image_location: "image/cats/jeans.png",
            image_caption: "Jeans",
          ),

           Category(
            image_location: "image/cats/informal.png",
            image_caption: "Informal",
          ),
           Category(
            image_location: "image/cats/shoe.png",
            image_caption: "Shose",
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  String image_location;
  String image_caption;

  Category({
    this.image_caption,
    this.image_location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 200,
              height: 80,
            ),
            subtitle: Container(
              alignment:Alignment.topCenter,
            child: Text(image_caption,style: TextStyle(fontSize: 12),),
            ),
          ),
        ),
      ),
    );
  }
}
