import 'package:flutter/material.dart';
import 'package:shop/pagees/ordar.dart';
import 'package:shop/pagees/profile.dart';
import 'home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  late Home homePage;
  late Order orderPage;
  late Profile profilePage;

  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    homePage = Home();
    orderPage = Order();
    profilePage = Profile();
    pages = [homePage, orderPage, profilePage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 75,
        backgroundColor: const Color.fromARGB(255, 207, 215, 151),
        color: Colors.black,
        animationDuration: Duration(microseconds: 600000),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_2_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
