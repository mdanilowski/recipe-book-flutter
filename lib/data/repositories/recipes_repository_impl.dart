import 'package:injectable/injectable.dart';
import 'package:recipe_book/data/data_source/remote_recipes_data_source.dart';
import 'package:recipe_book/data/models/remote/remote_recipe.dart';
import 'package:recipe_book/domain/models/recipe.dart';
import 'package:recipe_book/domain/repositories/recipes_repository.dart';

@Injectable(
  as: RecipesRepository,
)
class RecipesRepositoryImpl implements RecipesRepository {
  final RemoteRecipesDataSource remoteRecipesDataSource;

  const RecipesRepositoryImpl({
    required this.remoteRecipesDataSource,
  });

  @override
  Future<List<Recipe>> getAllUsersRecipes() async {
    final List<RemoteRecipe> recipes = await remoteRecipesDataSource.getUsersRecipes();
    return recipes
        .map(
          (recipe) => recipe.toDomainModel(),
        )
        .toList();
  }
}
