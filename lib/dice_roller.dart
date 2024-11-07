import 'package:flutter/material.dart';
import 'dart:math';

final rng = Random(); // rng 也可以放在global, 全部的diceRoller都用同一個

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  // State createState() { // 這樣也可以
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // 沒有放constructor dart會自己給一個，所以可以直接在 createState用

  int dicePoint = 1;
  //final rng = Random(); // rng 放在外面，只new 一次比較好
  void rollDice() {
    var nextInt = rng.nextInt(6) + 1; // 直接 Random().nextInt(6) + 1; 也可以
    // 要改state的要放在 State 提供的 setState裡面, 裡面可以放匿名函數就好
    setState(() {
      dicePoint = nextInt;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // StyleText('Hello!'),
        // Image(image: AssetImage('assets/images/dice-1.png')),
        Image.asset(
          'assets/images/dice-$dicePoint.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text('Roll'),
        )
      ],
    );
  }
}
