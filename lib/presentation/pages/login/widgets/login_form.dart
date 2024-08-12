import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book/presentation/pages/login/login_cubit.dart';
import 'package:recipe_book/presentation/widgets/buttons/loading_filled_button.dart';

class LoginForm extends StatefulWidget {
  final Function({
    required String email,
    required String password,
  }) onLoginPressed;

  const LoginForm({
    super.key,
    required this.onLoginPressed,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                hintText: 'Enter your e-mail address',
              ),
              validator: (email) {
                if (email == null || email.isEmpty) return 'Email should not be empty';
                return null;
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              maxLines: 1,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              validator: (password) {
                if (password == null || password.isEmpty) return 'Password should not be empty';
                return null;
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (_, state) {
                return LoadingFilledButton(
                  onPressed: () {
                    final bool isFormValid = _formKey.currentState?.validate() ?? false;
                    if (!isFormValid) return;

                    FocusManager.instance.primaryFocus?.unfocus();
                    widget.onLoginPressed(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                  },
                  isLoading: state.isAuthInProgress,
                  text: 'Login',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
