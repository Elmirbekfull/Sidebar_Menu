

import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Favorite", style: TextStyle(
          color: Colors.black
        ),),
      ),

  );
  

}