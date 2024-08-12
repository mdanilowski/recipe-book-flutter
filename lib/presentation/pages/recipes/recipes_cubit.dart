import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book/domain/models/error/app_error.dart';
import 'package:recipe_book/domain/models/recipe.dart';
import 'package:recipe_book/domain/use_cases/recipes/get_recipes_use_case.dart';

part 'recipes_state.dart';

part 'recipes_cubit.freezed.dart';

class RecipesCubit extends Cubit<RecipesState> {
  late final GetRecipesUseCase _getRecpiesUseCase;

  RecipesCubit({
    required GetRecipesUseCase getRecpiesUseCase,
  }) : super(const RecipesState.initial()) {
    _getRecpiesUseCase = getRecpiesUseCase;
  }

  Future<void> getAllRecipes() async {
    emit(const RecipesState.loading());

    _getRecpiesUseCase().fold(
      (error) {
        emit(
          RecipesState.error(
            error: error,
          ),
        );
      },
      (recipes) {
        emit(
          RecipesState.loaded(
            recipes: recipes,
          ),
        );
      },
    );
  }
}
