import 'package:go_router/go_router.dart';
import 'package:recipe_book/presentation/pages/login/login_page.dart';
import 'package:recipe_book/presentation/pages/recipes/recipes_page_creator.dart';

class Routes {
  static const String login = '/login';
  static const String recipes = '/recipes';

  static GoRouter router(String initialRoute) => GoRouter(
        initialLocation: initialRoute,
        routes: [
          GoRoute(
            path: login,
            builder: (_, __) => LoginPageCreator().create(),
          ),
          GoRoute(
            path: recipes,
            builder: (_, __) => RecipesPageCreator().create(),
          )
        ],
      );
}
