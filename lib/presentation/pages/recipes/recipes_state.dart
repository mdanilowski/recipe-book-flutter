part of 'recipes_cubit.dart';

@freezed
sealed class RecipesState with _$RecipesState {
  const factory RecipesState.initial() = Initial;

  const factory RecipesState.loading() = Loading;

  const factory RecipesState.loaded({
    required List<Recipe> recipes,
  }) = Loaded;

  const factory RecipesState.error({
    required AppError error,
  }) = Error;
}
