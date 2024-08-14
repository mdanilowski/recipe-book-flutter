import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book/domain/models/error/app_error.dart';
import 'package:recipe_book/domain/models/login_method.dart';
import 'package:recipe_book/domain/use_cases/auth/authentication_use_case.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthenticationUseCase authenticationUseCase;

  LoginCubit({
    required this.authenticationUseCase,
  }) : super(const LoginState.initial());

  void loginWithGoogle() {
    emit(
      const LoginState.authInProgress(
        loginType: LoginMethod.google,
      ),
    );

    authenticationUseCase(AuthenticationUseCaseParams.google()).fold(
      (AppError error) {
        emit(const LoginState.authError());
      },
      (_) {
        emit(
          const LoginState.loggedInSuccessfully(),
        );
      },
    );
  }

  Future<void> loginWithPassword({
    required String email,
    required String password,
  }) async {
    emit(
      const LoginState.authInProgress(
        loginType: LoginMethod.password,
      ),
    );

    authenticationUseCase(
      AuthenticationUseCaseParams.basic(
        email: email,
        password: password,
      ),
    ).fold(
      (error) {
        emit(const LoginState.authError());
      },
      (token) {
        emit(const LoginState.loggedInSuccessfully());
      },
    );
  }
}
