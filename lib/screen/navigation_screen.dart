import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_clothes/screen/cart_screen.dart';
import 'package:we_clothes/screen/favorite_screen.dart';
import 'package:we_clothes/screen/home_screen.dart';
import 'package:we_clothes/screen/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages
      ),
      floatingActionButton: SafeArea(
          child: FloatingActionButton(
              onPressed: () {},
            child: Icon(
              Icons.qr_code,
              color: Colors.white,
            ),
            backgroundColor: const Color(0xFFDB3022),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            CupertinoIcons.home,
            CupertinoIcons.cart,
            CupertinoIcons.heart,
            CupertinoIcons.profile_circled,
          ], 
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: const Color(0xFFDB3022),
        gapLocation: GapLocation.center,
        activeIndex: pageIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
        onTap: (index){
            setState(() {
              pageIndex = index;
            });
        },
      ),
    );
  }
}
