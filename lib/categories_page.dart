import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'categories.dart';
import 'category_foods_page.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
      duration: const Duration(milliseconds: 2000), vsync: this);
  late final Animation<Offset> translateAnimation = Tween<Offset>(
          begin: Offset(0, MediaQuery.of(context).size.height),
          end: Offset.zero)
      .animate(controller);
  late final Animation<double> scaleAnimation = Tween<double>(begin: 0,end: 1).animate(controller);
  late final Animation<double> rotateAnimation = Tween<double>(begin: - 2 * math.pi,end: 2 * math.pi).animate(controller);
  late final Animation<double> opacityAnimation = Tween<double>(begin: 0,end: 1).animate(controller);

  @override
  void initState() {
    controller.forward();
    super.initState();
  }
  
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => Transform.translate(offset: translateAnimation.value,child: Transform.scale(scale: scaleAnimation.value,child: Transform.rotate(angle: rotateAnimation.value,child: Opacity(opacity: opacityAnimation.value,child: child)))),
      child: GridView.count(
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
      ),
    );
  }
}
