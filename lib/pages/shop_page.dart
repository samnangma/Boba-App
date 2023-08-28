import 'package:boba/components/drink_tile.dart';
import 'package:boba/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // user selected a drink, go to order page
  void goToOrderPage (Drink drink) {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Column(
          children: [
            // heading
            Text(
              "Bubble Tea Shop",
              style: TextStyle(fontSize: 20),
            ),

            // list of drinks for sale
            Expanded(
                child: ListView.builder(
                    itemCount: value.shop.length,
                    itemBuilder: (context, index) {
                      // get individual drink from shop
                      Drink individualDrink = value.shop[index];
                      // return that drink as a nice tile
                      return DrinkTile(drink: individualDrink, onTap: () => goToOrderPage(individualDrink),);
                    }
                ),
            ),
        ]
        ),
      ),
    );
  }
}
