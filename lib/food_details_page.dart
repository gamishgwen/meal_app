import 'package:flutter/material.dart';
import 'package:meal_app/favorite_widget.dart';
import 'package:meal_app/food.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.desc),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
        actions: [
          Favorite(food: food)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              food.image,
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.fitWidth,
            ),
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            for (int i = 0; i < food.ingredients.length; i++)
              Text(food.ingredients[i]),
            SizedBox(height: 16),
            Text(
              'Steps',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            for (int i = 0; i < food.steps.length; i++) Text(food.steps[i]),
          ],
        ),
      ),
    );
  }
}
