import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipe_book/domain/models/error/app_error.dart';
import 'package:recipe_book/domain/models/recipe.dart';
import 'package:recipe_book/presentation/pages/recipes/recipes_cubit.dart';
import 'package:recipe_book/presentation/widgets/recipe/recipe_grid_cell.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({
    super.key,
  });

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  late final RecipesCubit recipesCubit;

  @override
  void initState() {
    super.initState();
    recipesCubit = BlocProvider.of<RecipesCubit>(context);
    recipesCubit.getAllRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'Recipes',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => recipesCubit.getAllRecipes(),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<RecipesCubit, RecipesState>(
      builder: (_, state) {
        return switch (state) {
          Loading() => _buildLoadingRecipesView(),
          Loaded(recipes: final recipes) => _buildRecipesStaggeredView(recipes.reversed.toList()),
          Error(error: final error) => _buildErrorView(error),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }

  Widget _buildLoadingRecipesView() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildRecipesStaggeredView(List<Recipe> recipes) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 16.0,
      itemCount: recipes.length,
      itemBuilder: (_, index) => RecipeGridCell(
        recipe: recipes[index],
      ),
    );
  }

  Widget _buildErrorView(AppError error) {
    return Center(
      child: Text(error.displayErrorMessage),
    );
  }
}
