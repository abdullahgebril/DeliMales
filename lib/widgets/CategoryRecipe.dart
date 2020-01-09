import 'package:flutter/material.dart';
import '../Data.dart';
import 'package:delimales/widgets/MaelItem.dart';
class CategoryRecipe extends StatelessWidget {
  final String categorytitle ;
    final String categoryid;


  CategoryRecipe({this.categorytitle,this.categoryid});


  @override
  Widget build(BuildContext context) {
    final categoriesMeal = DUMMY_MEALS.where((meal){
      return meal.categories.contains( categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: (
        Text(categorytitle,style: Theme.of(context).textTheme.title,)
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
       return  MaleItem(title: categoriesMeal[index].title,
         imageUrl: categoriesMeal[index].imageUrl,
           duration: categoriesMeal[index].duration,
         complexity: categoriesMeal[index].complexity,
         id: categoriesMeal[index].id,



       );


      },itemCount: categoriesMeal.length,)
    );
  }
}
