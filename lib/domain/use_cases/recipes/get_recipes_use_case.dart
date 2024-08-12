import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book/domain/models/error/app_error.dart';
import 'package:recipe_book/domain/models/recipe.dart';
import 'package:recipe_book/domain/repositories/recipes_repository.dart';
import 'package:recipe_book/domain/use_cases/use_case.dart';

@injectable
class GetRecipesUseCase implements UseCase<Either<AppError, List<Recipe>>, GetRecipesUseCaseParams> {
  final RecipesRepository recipesRepository;

  const GetRecipesUseCase({
    required this.recipesRepository,
  });

  @override
  Future<Either<AppError, List<Recipe>>> call([GetRecipesUseCaseParams? params]) async {
    try {
      final List<Recipe> recipes = await recipesRepository.getAllUsersRecipes();
      return Right(recipes);
    } catch (error) {
      return Left(AppError.fromError(error));
    }
  }
}

class GetRecipesUseCaseParams implements UseCaseParams {}
