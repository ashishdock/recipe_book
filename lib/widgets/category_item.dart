import 'package:flutter/material.dart';
import 'package:recipe_book/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({ Key? key }) : super(key: key);
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectedCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/category-meals', arguments: {'id': id, 'title': title});

    // (MaterialPageRoute(
    //     builder: (_) => CategoryMealScreen(id, title, color)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectedCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(.3), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
