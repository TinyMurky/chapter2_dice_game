import 'package:flutter/material.dart';
import 'package:chapter2_dice_game/gradient_container.dart';

void main() {
  runApp(myApp);
}

var myApp = MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text(
        'Dice Game',
        style: TextStyle(color: Colors.white70),
      ),
      backgroundColor: const Color.fromARGB(191, 84, 201, 255),
      shadowColor: Colors.black45,
    ),
    body: const GradientContainer(
        [Color.fromARGB(255, 151, 210, 238), Color.fromARGB(255, 8, 40, 121)]),
    backgroundColor: const Color.fromARGB(255, 217, 50, 106),
  ),
);



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('First App'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text(
//                 'Hello World!',
//               ),
//               Text(
//                 'It\'s time to learn Flutter!',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
