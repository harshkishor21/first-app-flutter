import 'dart:math';

import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceRollNumber = randomize.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      diceRollNumber = randomize.nextInt(6) + 1;
    print(diceRollNumber);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$diceRollNumber.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Now'))
      ],
    );
  }
}
