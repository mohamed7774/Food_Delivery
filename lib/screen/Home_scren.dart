import 'package:flutter/material.dart';
import 'package:untitled20/screen/profile.dart';
import 'fav.dart';
import 'home_page.dart';



class Home_Screen extends StatefulWidget {

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int currentIndex =0;
  List<Widget> screens =[
    Home_Page(),
    fav_page(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar:  BottomNavigationBar(
            backgroundColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex:currentIndex ,
            onTap: (index){
              setState(() {
                currentIndex =index;
              });
            },
            items:
            const [
              BottomNavigationBarItem(
                icon:Icon(
                    Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon:Icon(
                    Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon:Icon(
                    Icons.person),
                label: 'Profile',
              ),
            ])
    );
  }
}


