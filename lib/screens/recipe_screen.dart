

import 'package:flutter/material.dart';
import 'package:spoonacular/model/recipe_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RecipeScreen extends StatefulWidget {
  //This stateful widget page takes in String mealType and Recipe recipe
  final String mealType;
  final Recipe recipe;

  const RecipeScreen({required this.mealType,
    required this.recipe});

  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}
class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar is widget.mealType
      appBar: AppBar(
        title: Text(widget.mealType),
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.recipe.spoonacularSourceUrl,
          //JS unrestricted, so that JS can execute in the webview
          javascriptMode: JavascriptMode.unrestricted,

        ),
      )
    );
  }
}