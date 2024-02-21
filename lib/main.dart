import 'package:flutter/material.dart';
import 'package:meal_app/dummy_food.dart';
import 'package:meal_app/filters_page.dart';
import 'package:meal_app/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => Foods(),
        child: Provider(
            create: (context) => FilterSettings(),
            child: const MaterialApp(
              home: HomePage(),
            )));
  }
}
