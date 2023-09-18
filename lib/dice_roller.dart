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

class _DiceRollerState extends State<DiceRoller>{

  var diceRoll = 2;

  void rolldice(){
    
    setState(() {

      diceRoll = randomize.nextInt(6) +1;
      

      
    });
    //....
    
  }

  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assests/images/dice-$diceRoll.png',
                  width: 200,
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: rolldice, 
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(fontSize: 20
                    ),
                  ),
                  child: const Text('Roll Dice')
                ),
              ],
            );

  }
}