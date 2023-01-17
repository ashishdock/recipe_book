import 'package:flutter/material.dart';

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
    // final categoryColor = routeArgs['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        // backgroundColor: categoryColor as Color,
      ),
      body: Text(''),
    );
  }
}
