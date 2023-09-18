
import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';

const startpoint = Alignment.topCenter;
const endpoint = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;
  

  @override
  Widget build(context) {
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startpoint,
              end: endpoint,
            ),
          ),
          child: const Center(
            child: DiceRoller(),
         ),
    );

  }
}