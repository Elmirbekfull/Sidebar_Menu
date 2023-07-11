


import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("My profile", style: TextStyle(
          color: Colors.white
        ),),
      ),
  );
}