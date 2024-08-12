// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe_book/data/data_source/remote_recipes_data_source.dart'
    as _i5;
import 'package:recipe_book/data/data_source/remote_recipes_data_source_impl.dart'
    as _i6;
import 'package:recipe_book/data/repositories/recipes_repository_impl.dart'
    as _i8;
import 'package:recipe_book/domain/repositories/recipes_repository.dart' as _i7;
import 'package:recipe_book/domain/use_cases/auth/authentication_use_case.dart'
    as _i3;
import 'package:recipe_book/domain/use_cases/recipes/get_recipes_use_case.dart'
    as _i9;
import 'package:recipe_book/injectable/modules/graph_ql_module.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final graphQlModule = _$GraphQlModule();
    gh.factory<_i3.AuthenticationUseCase>(() => _i3.AuthenticationUseCase());
    gh.singleton<_i4.GraphQLClient>(() => graphQlModule.graphQlClient);
    gh.factory<_i5.RemoteRecipesDataSource>(() =>
        _i6.RemoteRecipesDataSourceImpl(
            graphQlClient: gh<_i4.GraphQLClient>()));
    gh.factory<_i7.RecipesRepository>(() => _i8.RecipesRepositoryImpl(
        remoteRecipesDataSource: gh<_i5.RemoteRecipesDataSource>()));
    gh.factory<_i9.GetRecipesUseCase>(() =>
        _i9.GetRecipesUseCase(recipesRepository: gh<_i7.RecipesRepository>()));
    return this;
  }
}

class _$GraphQlModule extends _i10.GraphQlModule {}
