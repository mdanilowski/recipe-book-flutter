part of 'login_page.dart';

class LoginPageCreator extends PagesCreator {
  @override
  Widget create() {
    return BlocProvider(
      create: (_) => LoginCubit(
        authenticationUseCase: getIt.get<AuthenticationUseCase>(),
      ),
      child: const LoginPage(),
    );
  }
}
