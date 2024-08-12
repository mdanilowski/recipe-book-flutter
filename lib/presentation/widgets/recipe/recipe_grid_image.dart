import 'package:flutter/material.dart';

class RecipeGridImage extends StatelessWidget {
  final String? imageUrl;

  const RecipeGridImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final String? imageUrl = this.imageUrl;
    return Card(
      child: imageUrl != null
          ? Image.network(imageUrl)
          : Container(
              color: Colors.blue,
              height: 100.0,
            ),
    );
  }
}
