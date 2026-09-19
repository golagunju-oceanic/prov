import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:prov/core/colors.dart';
import 'package:prov/pages/cart.dart';
import 'package:prov/pages/catergory.dart';
import 'package:prov/pages/home.dart';
import 'package:prov/pages/profile.dart';
import 'package:prov/pages/shop.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  List screen = [Shop(), CartPage(), HomePage(), Catergory(), Profile()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    MyColors color = MyColors();

    return Scaffold(
      body: screen[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: CircleBorder(),

        backgroundColor: color.kprimaryColor,
        child: Icon(Icons.home_filled, color: color.kbackgroundColor, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: color.ktertiaryColor,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        notchMargin: 10,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.shop,
                size: 30,
                color: currentIndex != 0 ? color.kSecondaryColor : Colors.white,
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(
                Icons.trolley,
                size: 30,
                color: currentIndex != 1 ? color.kSecondaryColor : Colors.white,
              ),
            ),
            SizedBox(width: 80),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: Icon(
                Icons.category,
                size: 30,
                color: currentIndex != 3 ? color.kSecondaryColor : Colors.white,
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(
                Icons.person,
                size: 30,
                color: currentIndex != 4 ? color.kSecondaryColor : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
