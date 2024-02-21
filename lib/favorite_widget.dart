import 'package:flutter/material.dart';
import 'package:meal_app/dummy_food.dart';
import 'package:provider/provider.dart';

import 'food.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key, required this.food});
  final Food food;

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            context.read<Foods>().toggleFavorite(widget.food.id);
            // // widget.food.isFavorite = !widget.food.isFavorite;
            // if (widget.food.isFavorite == true) {
            //   widget.food.isFavorite = false;
            // } else {
            //   widget.food.isFavorite = true;
            // }
          });
        },
        icon: Icon(
          widget.food.isFavorite ? Icons.favorite : Icons.favorite_border,
          color: widget.food.isFavorite ? Colors.red : Colors.black87,
        ));
  }
}
