import 'package:flutter/material.dart';
import 'presentation/number_grid_screen.dart';

void main() {
  runApp(NumberGridApp());
}

class NumberGridApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Grid App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NumberGridScreen(),
    );
  }
}
