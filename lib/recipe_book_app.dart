import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book/presentation/routing/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'RecipesBook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          outlineBorder: BorderSide(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
        cardTheme: const CardTheme(
          elevation: 0.0,
        ),
        useMaterial3: true,
      ),
      routerConfig: Routes.router(initialRoute()),
    );
  }

  String initialRoute() {
    final bool? isAnonymous = FirebaseAuth.instance.currentUser?.isAnonymous;
    if (isAnonymous ?? true) {
      return Routes.login;
    }
    return Routes.recipes;
  }
}
