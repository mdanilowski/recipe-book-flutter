import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book/data/data_source/remote_recipes_data_source.dart';
import 'package:recipe_book/data/models/remote/remote_recipe.dart';
import 'package:recipe_book/data/models/remote/remote_recipes_result.dart';

@Injectable(
  as: RemoteRecipesDataSource,
)
class RemoteRecipesDataSourceImpl implements RemoteRecipesDataSource {
  final GraphQLClient graphQlClient;

  const RemoteRecipesDataSourceImpl({
    required this.graphQlClient,
  });

  @override
  Future<List<RemoteRecipe>> getUsersRecipes() async {
    const String _query = r''' query UsersRecipes {
  recipes {
    createdAt
    description
    id
    images {
      url
    }
    ingredients
    isHidden
    isPinned
    notes
    rating
    recipeTags: recipe_tags {
      tag {
        id
        name
      }
    }
    servings
    sourceUrl
    title
    updatedAt
    videoUrl
  }
}
''';

    final QueryOptions options = QueryOptions(
      document: gql(_query),
    );
    final QueryResult result = await graphQlClient.query(options);
    final Map<String, dynamic>? data = result.data;
    if (data == null) throw 'Error while fetching recipes - data is null';
    final RemoteRecipesResult recipesResult = RemoteRecipesResult.fromJson(data);
    return recipesResult.recipes;
  }
}
