// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteRecipe _$RemoteRecipeFromJson(Map<String, dynamic> json) => RemoteRecipe(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String,
      description: json['description'] as String?,
      notes: json['notes'] as String?,
      recipeTags: (json['recipeTags'] as List<dynamic>?)
          ?.map((e) => RemoteTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      ingredients: json['ingredients'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => RemoteImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoUrl: json['videoUrl'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      servings: json['servings'] as String?,
      isHidden: json['isHidden'] as bool?,
      isPinned: json['isPinned'] as bool?,
    );
