import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_book/data/models/domain_adapter.dart';
import 'package:recipe_book/data/models/remote/remote_image.dart';
import 'package:recipe_book/data/models/remote/remote_tag.dart';
import 'package:recipe_book/domain/extensions/iterable_extensions.dart';
import 'package:recipe_book/domain/models/recipe.dart';

part 'remote_recipe.g.dart';

@JsonSerializable()
class RemoteRecipe implements DomainAdapter<Recipe> {
  final String id;
  final DateTime? createdAt;
  final String title;
  final String? description;
  final String? notes;
  final List<RemoteTag>? recipeTags;
  final String? ingredients;
  final List<RemoteImage>? images;
  final String? videoUrl;
  final int? rating;
  final String? servings;
  final bool? isHidden;
  final bool? isPinned;

  const RemoteRecipe({
    required this.id,
    this.createdAt,
    required this.title,
    this.description,
    this.notes,
    this.recipeTags,
    this.ingredients,
    this.images,
    this.videoUrl,
    this.rating,
    this.servings,
    this.isHidden,
    this.isPinned,
  });

  factory RemoteRecipe.fromJson(Map<String, dynamic> json) => _$RemoteRecipeFromJson(json);

  @override
  Recipe toDomainModel() {
    return Recipe(
      title: title,
      description: description,
      notes: notes,
      tags: recipeTags
          ?.map(
            (recipeTag) => recipeTag.toDomainModel(),
          )
          .filterNotNull(),
      ingredients: ingredients,
      images: images
          ?.map(
            (remoteImage) => remoteImage.toDomainModel(),
          )
          .toList(),
      videoUrl: videoUrl,
    );
  }
}
