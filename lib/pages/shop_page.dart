import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_tile.dart';
import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffee);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Added to your cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Text(
                      "What coffee type are you?",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.coffeeShop.length,
                          itemBuilder: (context, index) {
                            Coffee eachCoffee = value.coffeeShop[index];

                            return CoffeeTile(
                              coffee: eachCoffee,
                              icon: Image.asset(
                                'assets/icons/add.png',
                                width: 40,
                              ),
                              onPressed: () => addToCart(eachCoffee),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ));
  }
}
