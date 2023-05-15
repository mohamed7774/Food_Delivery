import 'package:flutter/material.dart';

import '../Widget/BestFood.dart';
import '../Widget/Popular.dart';
import '../Widget/the_row.dart';
import 'Home_scren.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
        icon: (const Icon(Icons.arrow_back_ios)),
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  Home_Screen()));
        },
      ),
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(9.0),
          )
        ],
      ),
      body: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    const SizedBox(height: 10,),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child:
    TextField(
    decoration: InputDecoration(
    hintText: "Search Food",
    hintStyle: const TextStyle(color: Colors.white),
    prefixIcon: const Icon(
    Icons.search,
    color: Colors.white,
          ),
    filled: true,
    fillColor: Colors.black54,
    border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(55))),
    ),
    ),
      const SizedBox(
        height: 20,
      ),
      PopularFoodsWidget(),
      SizedBox(height: 1,),
      PopularFoods2Widget(),
      SizedBox(height: 1,),
      The_Row(),
      ]
    ),

      ),
    );
  }
}




