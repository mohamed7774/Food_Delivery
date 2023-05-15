import 'package:flutter/material.dart';
import 'package:untitled20/screen/Home_scren.dart';
import 'package:untitled20/screen/detail_page.dart';

import '../provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget cartItem({
    required String image,
    required String name,
    required int price,
    required Function onTap,
    required int quantity,
  }) {
    return Row(
      children: [
        Container(
          width: 170,
          height: 170,
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "burger bhout acha hain",
                        style: TextStyle(color: Colors.black87),
                      ),
                      Text(
                        "\E\G $price",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "$quantity",
                            style: TextStyle(fontSize: 20, color: Colors.black87),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close, color: Colors.black87),
                  onPressed: (){},
                )
              ],
            )),
      ],
    );
  }
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        decoration: BoxDecoration(
            color: Color(0xff3a3e3e), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "\E\G 250",
              style: TextStyle(color: Colors.black87, fontSize: 30),
            ),
            Text(
              "Check Out",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => DetailPage(image: '', name: '', price: 50,),
              ),
            );
          },
        ),
      ),

    );
  }
}
Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: Container(
      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 65,
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$ total",
            style: TextStyle(color: Colors.black87, fontSize: 30),
          ),
          Text(
            "Check Out",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => Home_Screen(),
            ),
          );
        },
      ),
    ),
    body: ListView.builder(itemBuilder:
        (BuildContext context, int index) {
      Container(
        child: Column(
          children:  [
            Container(
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(
                              'images/ph 11.jpg'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          child: const Text(
                            'Bazokka',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  DetailPage(price: 50,name: 'Bazokka', image: 'images/1.png',
                                )));
                          },
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children:
                          const [
                            Expanded(
                              child: Text(
                                'ملوك السعاده في مصر ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),

                            ),
                            Text(
                              'Open',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
        },
    )
  );
}


