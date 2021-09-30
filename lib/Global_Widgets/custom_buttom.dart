import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({required this.text, required this.onPressed});
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      decoration: BoxDecoration(color: Colors.blue[200]),
      child: TextButton(
        onPressed: () => onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
