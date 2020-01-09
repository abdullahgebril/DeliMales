import 'package:delimales/Data.dart';
import 'package:flutter/material.dart';
import 'CategoriesScreen.dart';

class MealDetails extends StatelessWidget {
  final String id;
  MealDetails({this.id});

  @override
  Widget build(BuildContext context) {
    Widget showTitle(String title) {
      return  Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      );
    }

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == id);

    return Scaffold(
        appBar: AppBar(
          title: Text(selectedMeal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              showTitle('Ingredients'),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.blueGrey,
                        child: Text(
                          selectedMeal.ingredients[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                    );
                  },
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              showTitle('Steps'),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(itemBuilder:(context,index){
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('${index+1}'),
                        ),

                        title: Text(selectedMeal.steps[index]),
                      ),
                      Divider(color: Colors.blue,height: 2,)
                    ],
                  );

                } ,itemCount: selectedMeal.steps.length,),
              )


            ],
          ),
        ));
  }
}
