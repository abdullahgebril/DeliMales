import 'package:flutter/material.dart';
import 'CategoryRecipe.dart';

class CategoruItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  CategoruItem({this.title, this.color,this.id});



  void selectCategory(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder:(_)=> CategoryRecipe(categoryid: id,categorytitle: title,) ));

  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> selectCategory(context),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        )),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
