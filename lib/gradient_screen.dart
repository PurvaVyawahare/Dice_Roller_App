import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

class GradientScreen extends StatelessWidget {
  const GradientScreen(this.list, {super.key});
  final List<Color> list;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: list,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
