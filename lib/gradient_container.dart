import 'package:flutter/material.dart';
import 'package:chapter2_dice_game/dice_roller.dart';
// import 'package:chapter2_dice_game/style_text.dart';

const startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> backgroundColors;

  const GradientContainer(this.backgroundColors, {super.key});

  @override // 不一定要加，只是標示，但最好加
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color.fromARGB(255, 186, 250, 242), // 用Gradient就好
        gradient: LinearGradient(
          // colors: [
          //   Color.fromARGB(255, 63, 17, 132),
          //   Color.fromARGB(255, 101, 23, 203)
          // ],
          colors: backgroundColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ), // 只要屬於是Decoration 抽象class都可以用
      child: const Center(
        // 這邊可以加上const
        child: DiceRoller(),
      ),
    );
  }
}
