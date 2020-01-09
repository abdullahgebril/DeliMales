import 'package:delimales/widgets/Drawer.dart' as prefix0;
import 'package:flutter/material.dart';
import 'CategoriesScreen.dart';
import 'favoriteScreen.dart';
import 'package:delimales/widgets/Drawer.dart';
class TapsScreen extends StatefulWidget {
  @override
  _TapsScreenState createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            unselectedLabelColor: Colors.indigo,

            tabs: <Widget>[

              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorite',
              )
            ],
          ),
        ),
drawer: drawer() ,

        body: TabBarView(
          children: <Widget>[

            CategoriesScreen(),
            FavoriteScreen()

          ],
        ),

      ),
    );
  }
}
