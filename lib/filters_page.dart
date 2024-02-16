import 'package:flutter/material.dart';

bool isGlutenFree = false;
bool isLactoseFree = false;
bool isVegetarian = false;
bool isVegan = false;

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterText(
                  title: 'Gluten Free',
                  subtile: 'only include gluten free meals',
                ),
                Switch(
                  value: isGlutenFree,
                  onChanged: (value) {
                    setState(() {
                      isGlutenFree=value;
                    });


                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterText(
                  title: 'Lactose free',
                  subtile: 'only include lactose free meals',
                ),
                Switch(
                  value: isLactoseFree,
                  onChanged: (value) {
                    setState(() {
                      isLactoseFree=value;
                    });


                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterText(
                  title: 'Vegetarian',
                  subtile: 'only include veg meals',
                ),
                Switch(
                  value: isVegetarian,
                  onChanged: (value) {
                    setState(() {
                      isVegetarian=value;
                    });


                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterText(
                  title: 'Vegan',
                  subtile: 'only include vegan meals',
                ),
                Switch(
                  value: isVegan,
                  onChanged: (value) {
                    setState(() {
                      isVegan=value;
                    });


                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({super.key});

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: true,
      onChanged: (value) {},
    );
  }
}

class FilterText extends StatelessWidget {
  const FilterText({super.key, required this.title, required this.subtile});

  final String title;
  final String subtile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          subtile,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
