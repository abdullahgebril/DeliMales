import 'package:flutter/material.dart';
import 'Screens/CategoriesScreen.dart';
import 'Screens/TapsScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMales',
      theme: ThemeData(

        primarySwatch: Colors.teal,
        accentColor: Colors.green,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          title:  TextStyle(

            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed'
          )

      ),
      ),
      home: TapsScreen(),
    );
  }
}


