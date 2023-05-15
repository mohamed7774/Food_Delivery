import 'package:flutter/material.dart';

import '../screen/detail_page.dart';


class The_Row extends StatelessWidget {
  const The_Row({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
                        [
                          const Expanded(
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
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Container(
                              width: 7.0,
                              height: 7.0,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          const Text(
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
          const SizedBox(
            height: 25,
          ),
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
                            'images/ph 10.jpg'),
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
                          'Bremer',
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
                        [
                          const Expanded(
                            child: Text(
                              'Sweet Chilli Crunchy Baguette',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Container(
                              width: 7.0,
                              height: 7.0,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          const Text(
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
          const SizedBox(
            height: 25,
          ),
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
                            'images/ph 9.jpg'),
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
                          'Chicken',
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
                        [
                          const Expanded(
                            child: Text(
                              'Texas Chicken',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Container(
                              width: 7.0,
                              height: 7.0,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          const Text(
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
          const SizedBox(
            height: 25,
          ),
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
                        [
                          const Expanded(
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
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Container(
                              width: 7.0,
                              height: 7.0,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          const Text(
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
         ]
      )
    );
  }
}
