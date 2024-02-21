import 'package:flutter/material.dart';
import 'package:meal_app/categories_page.dart';
import 'package:meal_app/favorite_page.dart';
import 'package:meal_app/filters_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              child: Column(
                children: [
                  Icon(Icons.no_food_outlined),
                  Text('Cooking up!'),
                ],
              ),
            ),
               ListTile(onTap: () {
              Navigator.of(context).pop();
            },
              title: Row(children: [
                Icon(Icons.set_meal),
              Text('Meals')],) ,
            ),
            ListTile(onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return FiltersPage();
              },));
            },
              title: Row(children: [
                Icon(Icons.filter_list_sharp),
                Text('Filters')],) ,
            )
          ],
        ),
      ),
      appBar: AppBar(
          title: selectedindex == 0 ? Text('Categories') : Text('Favorites'),
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context) {
          //         return FavoritePage();
          //       },
          //     ));
          //   },
          //   icon: const Icon(Icons.menu),
          // )
      ),
      body: selectedindex == 0 ? CategoriesSection() : FavoritePage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        currentIndex: selectedindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Fovorite'),
        ],
      ),
    );
  }
}
