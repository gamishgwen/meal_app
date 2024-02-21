import 'package:flutter/material.dart';
import 'package:meal_app/food.dart';
import 'package:meal_app/food_overview_widget.dart';
import 'package:provider/provider.dart';

import 'dummy_food.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListenableBuilder(
      listenable: context.read<Foods>(),
      builder: (context, child) {
        final dummyFoods = context.read<Foods>().dummyFoods;
        final List<Food> favoriteFood = dummyFoods.where((food) {
          return food.isFavorite;
        }).toList();
        return Column(children: [
          for(Food favFood in favoriteFood)
             FoodOverviewWidget(food: favFood)
        ]);
      },
    );
  }
}
