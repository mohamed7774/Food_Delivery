import 'package:flutter/material.dart';
import 'package:untitled20/screen/Home_scren.dart';
import 'package:untitled20/screen/home_page.dart';
import 'package:untitled20/screen/login.dart';


class fav_page extends StatefulWidget {

  @override
  State<fav_page> createState() => _fav_pageState();
}

class _fav_pageState extends State<fav_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Favorite Items'
        ),
        backgroundColor: Colors.grey,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        child: const Center(
          child: Text(''
              'no item select',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>   Home_Screen()));
        },
        child: const Icon(Icons.add),
      ),
    )
    ;
  }
}
