import 'package:flutter/material.dart';
import 'package:delimales/models/recipe.dart';
import 'package:delimales/Screens/MealDetails.dart';
class MaleItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  MaleItem({this.title, this.imageUrl, this.duration, this.complexity,this.id});
  String get complexityString{
    switch (complexity) {
      case Complexity.smiple:
        return 'smiple';
        break;
      case Complexity.hard:
        return 'hard';
        break;
      case Complexity.challenge:
        return 'challenge';
        break;
      default:
        return 'Unkwon';
    }
  }
  void selectMale(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder:(_)=> MealDetails(id: id)));
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> selectMale(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 8,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,
                    )),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    width: 300,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule,
                      size: 35,),
                      SizedBox(width: 6,),
                      Text('$duration',style: TextStyle(
                        fontSize: 23,
                        color: Colors.black
                      ),)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work,size: 35,),
                      SizedBox(width: 6,),
                      Text(complexityString,style: TextStyle(
                        fontSize: 23,
                        color: Colors.black
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
