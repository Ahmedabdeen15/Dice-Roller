import "package:flutter/material.dart";
import 'dart:math';

var currentDiceNo = 1;
final randamizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollTheDice() {
    setState(() {
      currentDiceNo = randamizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets\\images\\dice-$currentDiceNo.png",
          width: 200,
        ),
        TextButton(
            onPressed: rollTheDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Let's roll the dice"))
      ],
    );
  }
}
