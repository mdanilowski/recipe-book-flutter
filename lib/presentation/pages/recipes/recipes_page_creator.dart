import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book/domain/use_cases/recipes/get_recipes_use_case.dart';
import 'package:recipe_book/injectable/injectable.dart';
import 'package:recipe_book/presentation/common/pages_creator.dart';
import 'package:recipe_book/presentation/pages/recipes/recipes_cubit.dart';
import 'package:recipe_book/presentation/pages/recipes/recipes_page.dart';

class RecipesPageCreator implements PagesCreator {
  @override
  Widget create() {
    return BlocProvider(
      create: (_) => RecipesCubit(
        getRecpiesUseCase: locate<GetRecipesUseCase>(),
      ),
      child: const RecipesPage(),
    );
  }
}
