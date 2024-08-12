import 'package:recipe_book/data/models/remote/remote_recipe.dart';

abstract interface class RemoteRecipesDataSource {
  Future<List<RemoteRecipe>> getUsersRecipes();
}