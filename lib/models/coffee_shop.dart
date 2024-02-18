import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "3.10",
      imagePath: "assets/images/coffee.png",
    ),

    //latter
    Coffee(
      name: 'Latte',
      price: "3.50",
      imagePath: "assets/images/latte.png",
    ),

    Coffee(
      name: 'Espresso',
      price: "4",
      imagePath: "assets/images/espresso.png",
    ),
    Coffee(
      name: 'Iced Coffee',
      price: "4.20",
      imagePath: "assets/images/iced-coffee.png",
    ),
  ];

  final List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
