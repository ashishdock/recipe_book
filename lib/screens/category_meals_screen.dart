import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // const ({ Key? key }) : super(key: key);

  // final String categoryId;
  // final String categoryTitle;
  // final Color categoryColor;

  // CategoryMealScreen(this.categoryId, this.categoryTitle, this.categoryColor);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryid = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(categoryid))
        .toList();
    // final categoryColor = routeArgs['color'];
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
          // backgroundColor: categoryColor as Color,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
