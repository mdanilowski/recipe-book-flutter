// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_recipes_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteRecipesResult _$RemoteRecipesResultFromJson(Map<String, dynamic> json) =>
    RemoteRecipesResult(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => RemoteRecipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
