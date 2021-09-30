import 'package:flutter/material.dart';

///
/// This widget draws a custom buttom, we can
/// define what will be the text displayed on it.
/// We create this custom buttom to be used in the
/// HomePage and TotalPage.
/// String Text is required
///

class CustomButtomWidget extends StatelessWidget {
  const CustomButtomWidget({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blue[200],
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Align(
          alignment: Alignment.center,

          //Text Value
          //
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
