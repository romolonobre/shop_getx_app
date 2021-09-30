import 'package:flutter/material.dart';

/// This widget draws the iten as a image.
/// a imageUrl is required

class ProductWidget extends StatelessWidget {
  ProductWidget({required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        height: 120,
        width: 165,
      ),
    );
  }
}
