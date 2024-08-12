import 'package:recipe_book/injectable/credentials/credentials_provider.dart';

class FakeCredentialsProvider implements CredentialsProvider {
  @override
  String get baseApiUrl => 'https://fakeApiUrl.com/graphQL';
}