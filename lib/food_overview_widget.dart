import 'package:flutter/material.dart';
import 'package:meal_app/food_details_page.dart';

import 'food.dart';

class FoodOverviewWidget extends StatelessWidget {
  final Food food;

  const FoodOverviewWidget({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return FoodDetails(food: food);
      },));
    },
      child: Stack(
        children: [
          Image.network(food.image,
             width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              // constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(color: Colors.black87),
              child: Column(
                children: [
                  Text(food.desc,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time_outlined, color: Colors.white),
                      SizedBox(width: 8),
                      Text(food.time.toString(), style: TextStyle(color: Colors.white)),
                      SizedBox(width: 8),
                      Icon(Icons.work, color: Colors.white),
                      SizedBox(width: 8),
                      Text(food.complexity.name, style: TextStyle(color: Colors.white)),
                      SizedBox(width: 8),
                      Icon(Icons.monetization_on_outlined, color: Colors.white),
                      SizedBox(width: 8),
                      Text(food.affordability.name, style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
