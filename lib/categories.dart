import 'dart:ui';

import 'package:flutter/material.dart';

enum Categories{
  italian,
  quickRecipe,
  hamburger,
  german,
  exotic,
  breakfast,
  asian,
  french,
  summer,
  chinese,
}

Color gridColor(Categories categories){
  if(categories==Categories.italian){return Colors.red;}
  else if(categories==Categories.quickRecipe){return Colors.blue;}
  else if(categories==Categories.hamburger){return Colors.green;}
  else if(categories==Categories.german){return Colors.yellow;}
  else if(categories==Categories.exotic){return Colors.orange;}
  else if(categories==Categories.breakfast){return Colors.purpleAccent;}
  else if(categories==Categories.asian){return Colors.pinkAccent;}
  else if(categories==Categories.french){return Colors.cyan;}
  else if(categories==Categories.summer){return Colors.grey;}
  else if(categories==Categories.chinese){return Colors.teal;}
  else throw Exception();
}