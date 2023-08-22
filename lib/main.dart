import 'package:flutter/material.dart';
import 'Gradient_Container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(108, 104, 185, 82),
          Colors.black26,
          Color.fromARGB(255, 45, 245, 5)
        ]),
      ),
    ),
  );
}
