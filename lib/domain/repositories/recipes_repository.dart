import 'package:recipe_book/domain/models/recipe.dart';

abstract interface class RecipesRepository {
  Future<List<Recipe>> getAllUsersRecipes();
}