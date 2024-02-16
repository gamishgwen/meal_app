import 'package:flutter/material.dart';
import 'package:meal_app/category_foods_page.dart';
import 'package:meal_app/filters_page.dart';
import 'package:meal_app/food_details_page.dart';
import 'package:meal_app/home_page.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomePage() ,);
  }
}

