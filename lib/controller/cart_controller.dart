import 'package:cart_project/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//This is out CartController

class CartController extends GetxController {
  /// we use .obs because we will deal with state and once
  /// you have .obs  near a variable it becames Stateful variable
  /// wich means the variable has some state.
  /// it will redraw the UI immidiately

  var shorts = 0.obs;
  var shoes = 0.obs;

  var cart = RxList<Product>();

  /// We have created an addToCart function which we
  /// can use to add a product to the cart

  void addToCart(Product product) {
    cart.add(product);

    if (product.name == "Short") {
      shorts.value++;
    }
    if (product.name == "Shoe") {
      shoes.value++;
    }
  }

  /// We have created an addToCart function which we
  /// can use to remove  a product to the cart

  void removeFromCart(Product product) {
    if (cart.isEmpty) {
      showSnackbar();
      return;
    }
    cart.remove(product);
    if (product.name == "Short") {
      shorts.value--;
    }
    if (product.name == "Shoe") {
      shoes.value--;
    }
  }

  // List of Products

  final shoe = Product(
    name: "Shoe",
    imageUrl:
        'https://images.unsplash.com/photo-1591195853828-11db59a44f6b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80)',
  );
  final short = Product(
    name: "Short",
    imageUrl:
        'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
  );

  /// We created $showSnackbar fuction to show a snackbar
  /// every time the use tries to go below 0 item in the cart
  ///

  void showSnackbar() {
    return Get.snackbar(
      'GetShop',
      'Item can\'t be less than 0',
      backgroundColor: Colors.blue[200],
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
      icon: const Icon(
        Icons.notification_important_outlined,
        color: Colors.white,
      ),
    );
  }
}
