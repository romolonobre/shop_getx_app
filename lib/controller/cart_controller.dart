import 'package:flutter/material.dart';
import 'package:get/get.dart';

//This is out CartController

class CartController extends GetxController {
  /// we use .obs because we will deal with state and once
  /// you have .obs  near a variable it becames Stateful variable
  /// wich means the variable has some state.
  /// it will redraw the UI immidiately
  ///
  var shorts = 0.obs;
  var shoes = 0.obs;

  /// With $sum variable we cauculate the
  /// value of the 2 variable we have $shorts + $shoes
  ///

  int get sum => shorts.value + shoes.value;

  /// We use this function to Increase the cart
  /// everytime teh user clic

  void increaseShorts() {
    shorts++;
  }

  /// We use this function to Increase the cart
  /// everytime the user clic.
  /// We use with the help of $GetX a snackbar to
  /// show a message to the user if the use try to
  /// go below 0
  ///
  void descreaseShorts() {
    if (shorts.value <= 0) {
      Get.snackbar(
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

      //Increase value
      //
    } else {
      shorts--;
    }
  }

  /// We use this function to Decrease the cart
  /// everytime the user clic

  void increaseShoes() {
    shoes++;
  }

  /// We use this function to Decrease the cart
  /// everytime the user clic.
  /// We use with the help of $GetX a snackbar to
  /// show a message to the user if the use try to
  /// go below 0
  ///

  void descreaseShoes() {
    if (shoes.value <= 0) {
      Get.snackbar('GetShop', 'Item can\'t be less than 0',
          backgroundColor: Colors.blue[200],
          colorText: Colors.white,
          duration: const Duration(seconds: 5),
          icon: const Icon(
            Icons.notification_important_outlined,
            color: Colors.white,
          ));

      //Decrease value

    } else {
      shoes--;
    }
  }
}
