import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/style_text.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.positions, required this.colors, super.key});

  final List<Color> colors;
  final List<Alignment> positions;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: positions[0],
          end: positions[1],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
