import 'package:boba/models/drink.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweetValue = 0.5;

  void customizeSweet(double newValue) {
    sweetValue = newValue;
  }

  double iceValue = 0.5;

  void customizeIce(double newValue) {
    iceValue = newValue;
  }

  double pearlValue = 0.5;

  void customizePearl(double newValue) {
    sweetValue = newValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drink.name),
      ),
      backgroundColor: Colors.brown[200],
      body: Column(
        children: [
          // drink image
          Image.asset(widget.drink.imagePath),

          // sliders to customize drink
          Column(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox (
                      width: 100,
                      child: Text('Sweet'),
                    ),

                    Expanded(
                      child: Slider(
                      value: sweetValue,
                      label: sweetValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizeSweet(value),
                    ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child:Text('Pearls'),

                  ),

                  Expanded(
                    child: Slider(
                      value: pearlValue,
                      label: pearlValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizePearl(value),
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}

