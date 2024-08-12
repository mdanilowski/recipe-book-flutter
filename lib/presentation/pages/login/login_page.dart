import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_book/domain/use_cases/auth/authentication_use_case.dart';
import 'package:recipe_book/injectable/injectable.dart';
import 'package:recipe_book/presentation/common/pages_creator.dart';
import 'package:recipe_book/presentation/pages/login/login_cubit.dart';
import 'package:recipe_book/presentation/pages/login/widgets/login_form.dart';
import 'package:recipe_book/presentation/routing/routes.dart';

part 'login_page_creator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginCubit _loginCubit;
  late final StreamSubscription _loginStateSubscription;

  @override
  void initState() {
    super.initState();
    _loginCubit = BlocProvider.of<LoginCubit>(context);
    _setUpLoginStateListener();
  }

  void _setUpLoginStateListener() {
    _loginStateSubscription = _loginCubit.stream.listen(
      (LoginState newState) {
        return switch (newState) {
          LoggedInSuccessfully() => context.go(Routes.recipes),
          _ => null,
        };
      },
    );
  }

  @override
  void dispose() {
    _loginStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'SIGN IN',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 32.0,
            ),
            LoginForm(
              onLoginPressed: _loginCubit.loginWithPassword,
            ),
            ElevatedButton(
              onPressed: _loginCubit.loginWithGoogle,
              child: const Text('Login with Google'),
            )
          ],
        ),
      ),
    );
  }
}
