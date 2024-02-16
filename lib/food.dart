import 'categories.dart';

enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Food {
  final String id;
  final String image;
  final String desc;
  final int time;
  final Complexity complexity;
  final Affordability affordability;
  final List<String> ingredients;
  final List<String> steps;
  final List<Categories> categories;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  bool isFavorite = false;

  Food({
    required this.id,
    required this.image,
    required this.desc,
    required this.time,
    required this.complexity,
    required this.categories,
    required this.affordability,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
  });
}

// List<Food> foods = [
//   Food(
//       image:
//           'https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg?size=338&ext=jpg&ga=GA1.1.87170709.1707868800&semt=sph',
//       desc: 'Spagatti with tomato sauce',
//       time: '20min',
//       complexity: 'simple',
//       affordability: 'costly',
//       ingredients: ['4tomatos', 'olive oil', 'speghetti', 'onions'],
//       steps: ['cut tomato', 'cut onion', 'cook both', 'drop it in dustbin']),
//   Food(
//       image:
//           'https://thumbs.dreamstime.com/b/diet-healthy-food-lifestyle-health-concept-sport-exercise-equipment-workout-and-gym-background-nutrition-detox-salad-f-179855057.jpg',
//       desc: 'Aspagarus salad',
//       time: '10min',
//       complexity: 'more time',
//       affordability: 'affordable', ingredients: ['4tomatos', 'olive oil', 'speghetti', 'onions'],
//       steps: ['cut tomato', 'cut onion', 'cook both', 'drop it in dustbin']),
//   Food(
//       image:
//           'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?cs=srgb&dl=pexels-ella-olsson-1640772.jpg&fm=jpg',
//       desc: 'Toast hawali',
//       time: '30min',
//       complexity: 'not easy',
//       affordability: 'affordable', ingredients: ['4tomatos', 'olive oil', 'speghetti', 'onions'],
//       steps: ['cut tomato', 'cut onion', 'cook both', 'drop it in dustbin']),
//   Food(
//       image:
//           'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg',
//       desc: 'Classic ham',
//       time: '40min',
//       complexity: 'hard',
//       affordability: 'costly', ingredients: ['4tomatos', 'olive oil', 'speghetti', 'onions'],
//       steps: ['cut tomato', 'cut onion', 'cook both', 'drop it in dustbin']),
// ];
