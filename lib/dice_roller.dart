import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var image = 'assets/dice-images/dice-2.png';
  void rollDice() {
    var random = randomizer.nextInt(6) + 1;
    setState(() {
      image = 'assets/dice-images/dice-$random.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image, width: 200),
        SizedBox(height: 25),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          child: Text('Roll Dice', style: TextStyle(fontSize: 25)),
        ),
      ],
    );
  }
}
