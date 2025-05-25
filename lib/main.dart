import 'package:flutter/material.dart';
import 'package:dice_app/gradient_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientScreen([
          const Color.fromARGB(255, 2, 46, 13),
          const Color.fromARGB(255, 7, 88, 27),
          const Color.fromARGB(255, 2, 111, 29),
        ]),
      ),
    ),
  );
}
