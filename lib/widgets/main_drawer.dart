import 'package:flutter/material.dart';
import 'package:recipe_book/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  // const MainDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BuildListTile(
            icon: Icons.restaurant,
            title: 'Meals',
            tapHandler: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          BuildListTile(
            icon: Icons.settings,
            title: 'Filters',
            tapHandler: () {
              Navigator.pushReplacementNamed(context, FiltersScreen.routeName);
            },
          ),
          // BuildListTile(
          //   icon: Icons.filter,
          //   title: 'Filter',
          //   tapHandler: () {
          //     Navigator.pushNamed(context, 'routeName');
          //   },
          // ),
        ],
      ),
    );
  }
}

class BuildListTile extends StatelessWidget {
  // const BuildListTile({
  //   Key key,
  // }) : super(key: key);

  final String title;
  final IconData icon;
  final Function tapHandler;

  BuildListTile({this.icon, this.title, this.tapHandler});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }
}
