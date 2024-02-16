import 'package:flutter/material.dart';
import 'package:meal_app/food.dart';
import 'package:meal_app/food_overview_widget.dart';

import 'dummy_food.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Food> favoriteFood = [];

    for (Food food in dummyFoods) {
      if (food.isFavorite == true) {
        favoriteFood.add(food);
      }
    }
    return  Column(children: [
        for(Food favFood in favoriteFood)
           FoodOverviewWidget(food: favFood)
      ]);
  }
}
