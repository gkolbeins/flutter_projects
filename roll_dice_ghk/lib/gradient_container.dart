import 'package:flutter/material.dart';
import 'package:roll_dice_ghk/dice_roller.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

    const GradientContainer.green({super.key})
      : color1 = const Color.fromARGB(255, 2, 89, 69),
        color2 = const Color.fromARGB(255, 98, 227, 197);

  final Color color1;
  final Color color2;
 

  @override
  Widget build(contect) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
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

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

// final List<Color> colors;

//   @override
//   Widget build(contect) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//                  begin: startAlignment,
//                  end: endAlignment,
//               ),
//           ),
//           child: const Center(
//             child: StyledText('Hello World!'),
//           ),
//         );
// }
// }