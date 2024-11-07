import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  final String textContent;
  // 下面這三種都可以，但是dart最喜歡最下面的
  // const StyleText(String textContent, {super.key}) : textContent = textContent;
  // const StyleText(String this.textContent, {super.key});
  const StyleText(this.textContent, {super.key});

  @override
  Widget build(context) {
    return Text(
      textContent,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white70,
      ),
    );
  }
}
