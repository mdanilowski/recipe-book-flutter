import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_book/data/models/remote/remote_recipe.dart';

part 'remote_recipes_result.g.dart';

@JsonSerializable()
class RemoteRecipesResult {
  final List<RemoteRecipe> recipes;

  RemoteRecipesResult({
    required this.recipes,
  });

  factory RemoteRecipesResult.fromJson(Map<String, dynamic> json) => _$RemoteRecipesResultFromJson(json);
}
