import 'package:flutter/material.dart';
import 'package:delimales/Screens/TapsScreen.dart';
import 'package:delimales/Screens/FliterScreen.dart';
class drawer extends StatelessWidget {


  Widget buildListTitle(IconData icon , String title,Function handleTap) {
    return ListTile(
      leading: Icon(icon,size: 26,),
      title: Text(title,style: TextStyle(
        fontSize: 25,
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.bold,

      )),
    onTap: handleTap,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(20),
            height: 120,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              'Meals',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

              color: Colors.white
              ),
            ),
          ),
          buildListTitle(Icons.restaurant, 'Meal',(){
            Navigator.push(context, MaterialPageRoute(builder:(_)=> TapsScreen() ));
          }),
          SizedBox(height: 20,),
          buildListTitle(Icons.settings, 'settings',(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FliterScreen()),
            );
          })
        ],
      ),
    );
  }
}
