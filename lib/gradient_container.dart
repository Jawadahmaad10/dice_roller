import 'package:flutter/material.dart';

import 'package:flutter_app/style_text.dart';

import 'dice_roller.dart';

// const used because of memory optimization
// variables are data containers

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          //[
          //    Color.fromARGB(255, 26, 2, 80),
          //   Color.fromARGB(255, 45, 7, 98),
          // ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}






/////
///
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({
//     required this.colors,
//     super.key,
//   });

//   final List<Color> colors;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors:  colors,
//           //[
//         //    Color.fromARGB(255, 26, 2, 80),
//          //   Color.fromARGB(255, 45, 7, 98),
//          // ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: StyledText('hello'),
//     );
//   }
// }