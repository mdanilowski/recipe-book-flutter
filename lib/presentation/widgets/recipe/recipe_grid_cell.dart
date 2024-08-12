import 'package:flutter/material.dart';
import 'package:recipe_book/domain/models/recipe.dart';
import 'package:recipe_book/presentation/widgets/recipe/recipe_grid_image.dart';

class RecipeGridCell extends StatelessWidget {
  final Recipe recipe;

  const RecipeGridCell({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeGridImage(
          imageUrl: recipe.firstImageOrNull,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 10.0,
          ),
          child: Text(
            recipe.title,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
}
