import 'package:firebase_auth/firebase_auth.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book/injectable/credentials/credentials_provider.dart';
import 'package:recipe_book/injectable/credentials/real_credentials_provider.dart';

@module
abstract class GraphQlModule {
  static final CredentialsProvider _credentialsProvider = RealCredentialsProvider();

  final HttpLink _httpLink = HttpLink(_credentialsProvider.baseApiUrl);

  final AuthLink _authLink = AuthLink(
    getToken: () async {
      final String? userToken = await FirebaseAuth.instance.currentUser?.getIdToken();
      return 'Bearer $userToken';
    },
  );

  Link get _link => _authLink.concat(_httpLink);

  @singleton
  GraphQLClient get graphQlClient => GraphQLClient(
        link: _link,
        cache: GraphQLCache(), // TODO: Replace with Hive
      );
}
