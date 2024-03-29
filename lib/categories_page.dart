import 'package:flutter/material.dart';

import 'categories.dart';
import 'category_foods_page.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1.9,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        for (int i = 0; i < Categories.values.length; i++)
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    CategoryFoodsPage(category: Categories.values[i]),

              ));
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      gridColor(Categories.values[i]).withAlpha(255),
                      gridColor(Categories.values[i]).withAlpha(100)
                    ]),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  Categories.values[i].name),
            ),
          ),
      ],
    );
  }
}
