import 'package:flutter/material.dart';
import 'package:delimales/widgets/Drawer.dart';

class FliterScreen extends StatefulWidget {
  @override
  _FliterScreenState createState() => _FliterScreenState();
}

class _FliterScreenState extends State<FliterScreen> {
  bool GlutenFree = false;
  bool Vegan = false;
  bool Vegetarian = false;
  bool LactoseFree = false;
  Widget buildSitchList(
      String title, String desription, bool currentValeue, Function handler) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(desription),
      value: currentValeue,
      onChanged: handler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fliter'),
      ),
      drawer: drawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Adjust show selected meals',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSitchList(
                    'isGlutenFree', 'include all Gluten Free meals', GlutenFree,
                    (value) {
                  setState(() {
                    GlutenFree = value;
                  });
                }),
                buildSitchList('Vegan', 'include all Vegan meals', Vegan,
                    (value) {
                  setState(() {
                    Vegan = value;
                  });
                }),
                buildSitchList('isVegetarian ',
                    'include all Vegetarian Free meals', Vegetarian, (value) {
                  setState(() {
                    Vegetarian = value;
                  });
                }),
                buildSitchList('isLactoseFree',
                    'include all Lactose Free meals', LactoseFree, (value) {
                  setState(() {
                    LactoseFree = value;
                  });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
