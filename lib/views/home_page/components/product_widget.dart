import 'package:cart_project/controller/cart_controller.dart';
import 'package:cart_project/models/product.dart';
import 'package:cart_project/views/home_page/components/item_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This widget draws the iten as a image.
/// a imageUrl is required

class ProductWidget extends StatelessWidget {
  ProductWidget({required this.product});

  final Product product;
  CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            height: 120,
            width: 165,
          ),
        ),

        /// This Widget draws our buttons : + and -
        /// the buttons has to paramentes
        /// onTapIncrease (increase item cart)
        /// and onTapdecrease(decrease item cart)

        ItemButtonsWidget(
          onTapIncrease: () =>
              controller.addToCart(product), // Increase Function call
          onTapdecrease: () => controller.removeFromCart(product),
        ),
      ],
    );
  }
}
