import 'package:cart_project/Global_Widgets/custom_buttom_widget.dart';
import 'package:cart_project/Global_Widgets/get_shop_logo.dart';
import 'package:cart_project/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This widget draws our screen.
/// we organize widgets on
/// the UI using the $TotalPage

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          // GetShop Logo and hero animation

          const GetShopLogo(
            tag: 'tag',
          ),
          const SizedBox(
            height: 80,
          ),

          // This widgtes draws the total sum
          // of the cart on the page center

          Align(
            alignment: Alignment.center,
            child: Text(
              'Total Items : ${controller.sum} ', // we call the sum
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // We use $Get.back() navigate to previwes page
          // We use Hero to give a nice animation to the app

          InkWell(
            onTap: () => Get.back(),
            child: const Hero(
              tag: 'tag',
              child: CustomButtomWidget(
                text: 'Go Back',
              ),
            ),
          )
        ],
      ),
    );
  }
}
