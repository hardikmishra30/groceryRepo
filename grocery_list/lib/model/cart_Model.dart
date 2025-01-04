// ignore: file_names
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list item on sale

  final List _shopItems = [
    //[ItemName, itemPrice, imagePath, color]
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.red[100]],
    ["Banana", "2.00", "lib/images/banana.png", Colors.yellow[100]],
    ["Paneer", "10.00", "lib/images/paneer.png", Colors.blueGrey[100]],
    ["Samosa", "3.00", "lib/images/samosa.png", Colors.brown[100]],
    ["Bread", "5.00", "lib/images/bread.png", Colors.deepOrange[100]],
    ["Water", "2.5", "lib/images/water.png", Colors.blue[100]],
  ];
  //list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add items to the cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice = totalPrice + double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
