import 'package:flutter/material.dart';
import '../Data.dart';
import '../widgets/Categoryitem.dart';
class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
        children: dataList.map((category){
            return CategoruItem(title: category.title,color: category.color,id: category.id,);

          }).toList()
        ,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),);
  }
}
