import 'package:cart_project/Global_Widgets/custom_buttom.dart';
import 'package:cart_project/Global_Widgets/custom_buttom_widget.dart';
import 'package:cart_project/Global_Widgets/get_shop_logo.dart';
import 'package:cart_project/models/product.dart';
import 'package:cart_project/views/home_page/components/item_buttons_widget.dart';
import 'package:cart_project/views/total_page/total_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:cart_project/controller/cart_controller.dart';

import 'components/product_widget.dart';

/// This widget draws our screen.
/// we organize widgets on
/// the UI using $HomePage

class HomePage extends GetView {
  // We call CartContoller here to be able to use it
  // on this page. We have to use $Get.put(CartController())

  @override
  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          //GetShop Logo

          const GetShopLogo(
            tag: 'tag1',
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //
              // ProductWidget value

              ProductWidget(product: controller.shoe),

              const SizedBox(
                width: 10,
              ),
              //
              // ProductWidget value

              ProductWidget(product: controller.short),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// We use $Obx function to acess the
              /// data from our CartController

              Obx(
                () => Text(
                  '${controller.shoes.toString()}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              /// We use $Obx function to acess the
              /// data from our CartController

              Obx(
                () => Text(
                  '${controller.shorts.toString()}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),

          // We use $Get.to to navigate to the
          // $TotalPage

          InkWell(
            onTap: () => Get.to(() => TotalPage()),
            child: const Hero(
              tag: 'tag',
              child: CustomButtomWidget(
                text: 'Total',
              ),
            ),
          ),
        ],
      ),
    );

    /// THIS IS NOT WORKING

    // InkWell(
    //  onTap: () => Get.to(() => const TotalPage1()),
    //   child: CustomButtom(text: 'See Total', onPressed: () {}
  }
}
