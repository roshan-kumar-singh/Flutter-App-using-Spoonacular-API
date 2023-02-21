

import 'package:flutter/material.dart';
import 'package:spoonacular/model/recipe_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class RecipeScreen extends StatefulWidget {
  //This stateful widget page takes in String mealType and Recipe recipe
  final String mealType;
  final Recipe recipe;

  const RecipeScreen({required this.mealType,
    required this.recipe});

  @override
  // _RecipeScreenState createState() => _RecipeScreenState();
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  WebViewPlusController? _controller;
  double _height = 1;
//widget.recipe.spoonacularSourceUrl
//   WebViewP(
//   initialUrl: widget.recipe.spoonacularSourceUrl,
//   //JS unrestricted, so that JS can execute in the webview
//   javascriptMode: JavascriptMode.unrestricted,
//
//   ),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar is widget.mealType
      appBar: AppBar(
        title: Text(widget.mealType),
      ),
      body: Container(
        child:WebViewPlus(
          serverPort:5353,
        javascriptChannels: null,
        initialUrl: widget.recipe.spoonacularSourceUrl,
        onWebViewCreated: (controller){
            _controller = controller;
            },
          javascriptMode: JavascriptMode.unrestricted,
        )
      )
    );
  }
}