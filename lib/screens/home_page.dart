import 'package:flutter/material.dart';
import 'package:grocery_app_v2/screens/header_part.dart';
import 'package:grocery_app_v2/screens/item_display.dart';
import 'package:grocery_app_v2/utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.green[200],
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Favorite'),
          ]),
      body: ListView(
        children: const[
          SizedBox(height: 15),
          // header parts 
          HeaderParts(),
          // body parts 
          ItemDisplay()

        ],
      ),
    );
  }
}
