


enum Complexity{
  smiple,
  hard,
  challenge
}
class Recipe {

  final String id;
  final List<String>categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;

  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

 const Recipe(
      {this.id,
        this.categories,
        this.title,
        this.imageUrl,
        this.duration,
        this.complexity,
        this.steps,
        this.ingredients,
        this.isLactoseFree,
        this.isVegan,
        this.isVegetarian,
        this.isGlutenFree});
}
