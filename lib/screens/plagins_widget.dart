

import 'package:flutter/material.dart';

class PlaginsPage extends StatelessWidget {
  const PlaginsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Favorite", style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}