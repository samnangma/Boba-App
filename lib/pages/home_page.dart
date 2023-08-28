import 'package:boba/components/bottom_nav_bar.dart';
import 'package:boba/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex =0;
  void navigateBottomBar( int newIndex){
    setState(() {
      _selectedIndex = newIndex;
    });

  }

  // pages to display
final List<Widget> _pages = [
  // shop page
  const ShopPage(),
  // cart page
  const CartPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],

    );
  }
}
