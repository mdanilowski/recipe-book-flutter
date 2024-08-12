import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book/injectable/injectable.dart';
import 'package:recipe_book/recipe_book_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  Firebase.initializeApp().whenComplete(() {
    runApp(const MyApp());
  });
}
