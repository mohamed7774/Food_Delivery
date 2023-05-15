import 'package:flutter/material.dart';

import '../screen/detail_page.dart';

class PopularFoodsWidget extends StatefulWidget {
  @override
  _PopularFoodsWidgetState createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  PopularFoodTiles(
      {
        required this.name,
        required this.imageUrl,
        required this.rating,
        required this.numberOfRating,
        required this.price,
        required this.slug});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
        return DetailPage(image: '', name: '', price:50,);
      }));},
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    width: 170,
                    height: 210,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  alignment: Alignment.topRight,
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(right: 5, top: 5),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white70,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFfae3e2),
                                            blurRadius: 25.0,
                                            offset: Offset(0.0, 0.75),
                                          ),
                                        ]),
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Color(0xFFfb3132),
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(

                                    radius: 70,
                                    backgroundImage: AssetImage(
                                      'images/' +
                                          imageUrl +
                                          ".jpg",
                                    ),
                                  ),
                                ),

                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: Text(name,
                                    style: const TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white70,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFfae3e2),
                                          blurRadius: 25.0,
                                          offset: Offset(0.0, 0.75),
                                        ),
                                      ]),
                                  child: const Icon(
                                    Icons.near_me,
                                    color: Color(0xFFfb3132),
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(left: 5, top: 5),
                                    child: Text(rating,
                                        style: const TextStyle(
                                            color: Color(0xFF6e6e71),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 3, left: 5),
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFF9b9b9c),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(left: 5, top: 5),
                                    child: Text("($numberOfRating)",
                                        style: const TextStyle(
                                            color: Color(0xFF6e6e71),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
                                child: Text('EG$price',
                                    style: const TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}


class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularFoodTiles(
            name: " KFC ",
            imageUrl: "ph 8",
            rating: '4.9',
            numberOfRating: '200',
            price: '100',
            slug: "fried_egg"),
        PopularFoodTiles(
            name: "Fatoma ",
            imageUrl: "ph 3",
            rating: "4.9",
            numberOfRating: "100",
            price: "150",
            slug: ""),
        PopularFoodTiles(
            name: "Bremer",
            imageUrl: "ph 4",
            rating: "4.0",
            numberOfRating: "50",
            price: "200",
            slug: ""),
        PopularFoodTiles(
            name: "Bazzoka",
            imageUrl: "ph 5",
            rating: "4.00",
            numberOfRating: "100",
            price: "200",
            slug: ""),
        PopularFoodTiles(
            name: "Gad",
            imageUrl: "ph 6",
            rating: "4.6",
            numberOfRating: "150",
            price: "120",
            slug: ""),
        PopularFoodTiles(
            name: "Bazzoka",
            imageUrl: "ph 7",
            rating: "4.00",
            numberOfRating: "100",
            price: "90",
            slug: ""),
        PopularFoodTiles(
            name: "Ø§Ù„Ø²Ø¹ÙŠÙ…",
            imageUrl: "ph 9",
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: ""),
        PopularFoodTiles(
            name: "Ø§Ù„Ù…Ø­Ù…Ø¯ÙŠ",
            imageUrl: "ph 10",
            rating: '4.9',
            numberOfRating: '200',
            price: '180',
            slug: ""),
        PopularFoodTiles(
            name: "chicken",
            imageUrl: "ph 11",
            rating: "4.6",
            numberOfRating: "150",
            price: "195",
            slug: ""),
      ],
    );
  }
}


