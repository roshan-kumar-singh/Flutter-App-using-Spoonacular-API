/* This class is responsible for getting and displaying meals
in our webview
*/

class Recipe {
  late String spoonacularSourceUrl;

  //has Equipment, Ingredients, Steps, e.t.c

  Recipe({required this.spoonacularSourceUrl});

//The spoonacularSourceURL displays the meals recipe in our webview

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      spoonacularSourceUrl: map['spoonacularSourceUrl'],
    );
  }
}