import 'package:cart_project/Global_Widgets/custom_buttom.dart';
import 'package:cart_project/Global_Widgets/custom_buttom_widget.dart';
import 'package:cart_project/Global_Widgets/get_shop_logo.dart';
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
  HomePage({Key? key}) : super(key: key);

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
                //Image product value

                ProductWidget(
                  imageUrl:
                      'https://images.unsplash.com/photo-1591195853828-11db59a44f6b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80)',
                ),
                const SizedBox(
                  width: 10,
                ),
                //
                //Image product value

                ProductWidget(
                    imageUrl:
                        'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // The buttons + and -
                // we have to call the function we created in the controller
                // we can do it by calling $controller.increaseShorts().
                //   -- controller = CartController --
                ItemButtonsWidget(
                  onTapIncrease: () =>
                      controller.increaseShorts(), // Increase Function call
                  onTapdecrease: () =>
                      controller.decreaseShorts(), // decrease Function call
                ),

                /// We use $Obx function to acess the
                /// data from our CartController

                Obx(() => Text(
                      '${controller.shorts.toString()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                /// We use $Obx function to acess the
                /// data from our CartController

                Obx(() => Text(
                      '${controller.shoes.toString()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                // The buttons + and -
                // we have to call the function we created in the controller
                // we can do it by calling $controller.increaseShorts().
                //   -- controller = CartController --

                ItemButtonsWidget(
                  onTapIncrease: () =>
                      controller.increaseShoes(), // Increase Function call
                  onTapdecrease: () =>
                      controller.decreaseShoes(), //decrease Function call
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
        ));

    /// THIS IS NOT WORKING

    // InkWell(
    //  onTap: () => Get.to(() => const TotalPage1()),
    //   child: CustomButtom(text: 'See Total', onPressed: () {}
  }
}
