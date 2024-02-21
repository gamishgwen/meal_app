import 'package:flutter/material.dart';
import 'package:meal_app/categories.dart';
import 'package:meal_app/dummy_food.dart';
import 'package:meal_app/filters_page.dart';
import 'package:meal_app/food.dart';
import 'package:meal_app/food_overview_widget.dart';
import 'package:provider/provider.dart';

class CategoryFoodsPage extends StatelessWidget {
  const CategoryFoodsPage({super.key, required this.category});

  final Categories category;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: context.read<Foods>(),
      builder: (context, child) {

        final dummyFoods = context.read<Foods>().dummyFoods;
        final List<Food> categoriesFood=[];

        for(int i=0; i<dummyFoods.length;i++){
          for(int j=0;j<dummyFoods[i].categories.length;j++){
            if(category==dummyFoods[i].categories[j]){
              categoriesFood.add(dummyFoods[i]);
            }
          }
          if(context.read<FilterSettings>().isGlutenFree == true && dummyFoods[i].isGlutenFree == false) {
            categoriesFood.remove(dummyFoods[i]);
          }
          if(context.read<FilterSettings>().isLactoseFree == true && dummyFoods[i].isLactoseFree == false) {
            categoriesFood.remove(dummyFoods[i]);
          }
          if(context.read<FilterSettings>().isVegetarian == true && dummyFoods[i].isVegetarian == false) {
            categoriesFood.remove(dummyFoods[i]);
          }
          if(context.read<FilterSettings>().isVegan == true && dummyFoods[i].isVegan == false) {
            categoriesFood.remove(dummyFoods[i]);
          }
        }

        return Scaffold(
        appBar: AppBar(
            title: Text(category.name),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            )),
        body: ListView(
          children: [

          for(int i=0;i<categoriesFood.length;i++)
            FoodOverviewWidget(food: categoriesFood[i]),
          ],
        ),
      );
      },
    );
  }
}
