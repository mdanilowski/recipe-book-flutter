import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book/domain/models/tag.dart';

part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const Recipe._();

  const factory Recipe({
    required String title,
    String? description,
    String? notes,
    List<Tag>? tags,
    String? ingredients,
    List<String>? images,
    String? videoUrl,
  }) = _Recipe;

  String? get firstImageOrNull => images?.firstOrNull;
}
