import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book/domain/models/error/app_error.dart';
import 'package:recipe_book/domain/use_cases/use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';

@injectable
class AuthenticationUseCase implements UseCase<Either<AppError, String>, AuthenticationUseCaseParams> {
  @override
  Future<Either<AppError, String>> call(AuthenticationUseCaseParams params) async {
    return switch (params) {
      _BasicAuthParams() => _basicLogin(),
      _GoogleAuthParams() => await _googleLogin(),
    };
  }

  Either<AppError, String> _basicLogin() {
    return Left(
      AppError.unknown(
        message: 'Login feature is not ready yet.',
      ),
    );
  }

  Future<Either<AppError, String>> _googleLogin() async {
    try {
      await FirebaseAuth.instance.signInWithProvider(GoogleAuthProvider());
      final String? userToken = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (userToken == null) {
        throw AppError.unknown(
          message: 'Unable to login via Google',
        );
      }
      return Right(userToken);
    } catch (error) {
      return Left(AppError.fromError(error));
    }
  }
}

sealed class AuthenticationUseCaseParams implements UseCaseParams {
  const AuthenticationUseCaseParams();

  factory AuthenticationUseCaseParams.basic({
    required String email,
    required String password,
  }) =>
      _BasicAuthParams(
        email: email,
        password: password,
      );

  factory AuthenticationUseCaseParams.google() => const _GoogleAuthParams();
}

class _BasicAuthParams extends AuthenticationUseCaseParams {
  final String email;
  final String password;

  const _BasicAuthParams({
    required this.email,
    required this.password,
  });
}

class _GoogleAuthParams extends AuthenticationUseCaseParams {
  const _GoogleAuthParams();
}
