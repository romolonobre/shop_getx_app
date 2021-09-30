import 'package:flutter/material.dart';

///This widget draws the logo GetShop.
/// We used this widget in the HomePage
/// and TotalPage. We use Hero to give
/// a nice anmation.
///

class GetShopLogo extends StatelessWidget {
  const GetShopLogo({Key? key, required this.tag}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: 'tag1',
      child: Material(
        color: Colors.transparent,
        child: Text(
          'GetShop',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontFamily: 'RobotoMono',
          ),
        ),
      ),
    );
  }
}
