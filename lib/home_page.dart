


import 'package:flutter/material.dart';
import 'package:slider_menu_app/slider_menu_widget.dart';

class NavigationDraverApp extends StatelessWidget {
  const NavigationDraverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
      ),
      home: SliderMenuWidgetApp()
    );
  }
}