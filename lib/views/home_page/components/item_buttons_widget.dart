import 'package:cart_project/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

/// This is draws 2 bottuns, increase buttom and a decrease buttom
/// and requires 2 Voidcallback functions. One to increase the itens
/// and one to decrease then itens

class ItemButtonsWidget extends StatelessWidget {
  ItemButtonsWidget({
    required this.onTapIncrease,
    required this.onTapdescrease,
  });

  final VoidCallback onTapIncrease;
  final VoidCallback onTapdescrease;

  final CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///
        /// INCREASE BUTTOM
        ///
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.blue[200],
            ),
          ),
          onPressed: onTapIncrease,

          //INCREASE ICON
          //
          child: const Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),

        ///
        /// DECREASE BUTTOM
        ///
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.blue[200],
            ),
          ),
          onPressed: onTapdescrease,

          /// DECREASE ICON

          child: const Icon(
            Icons.horizontal_rule_sharp,
            size: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
