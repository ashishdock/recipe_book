import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  // const FilterScreen({ Key? key }) : super(key: key);
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Your filters!'),
      ),
      body: Center(
        child: Text(
          'Filters!',
        ),
      ),
    );
  }
}
