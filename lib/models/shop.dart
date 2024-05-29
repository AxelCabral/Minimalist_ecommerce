import 'package:flutter/material.dart';
import 'package:minimalist_ecommerce/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
        name: "Watch",
        price: 599.99,
        description:
            "Introducing our elegant black classic watch, a timeless accessory that exudes sophistication and style.",
        imagePath: "lib/assets/watch.png"),
    Product(
        name: "Jordan Black",
        price: 1999.99,
        description:
            "Introducing the iconic Jordan sneakers: stylish, premium materials, advanced cushioning.",
        imagePath: "lib/assets/sneaker.png"),
    Product(
        name: "Glasses",
        price: 399.99,
        description:
            "Introducing our stylish sunglasses: sleek design, premium lenses, superior UV protection and clarity.",
        imagePath: "lib/assets/glasses.png"),
    Product(
        name: "Sweatshirt",
        price: 499.99,
        description:
            "Introducing our cozy hoodie: soft fabric, classic design, and relaxed fit for ultimate comfort and style.",
        imagePath: "lib/assets/sweatshirt.png"),
  ];

  // user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
