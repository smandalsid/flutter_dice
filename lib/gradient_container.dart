import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

const startalignment = Alignment.topLeft; // this is known during compiletime
// final startalignment=somefunction(); //use it when the value is not known before compilation
// Alignment? test; // creating Alignment type object which can be null or an Alignment object
const endalignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key:key);
  // or
  const GradientContainer(this.startcol, this.endcol, {super.key});

  final Color startcol, endcol;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startcol, endcol],
          begin: startalignment,
          end: endalignment,
        ),
      ),
      child: const Center(
        // child: StyledText('Hello World'),
        child: DiceRoller(),
      ),
    );
  }
}

// ANOTHER APPROACH OF USING NAMED ARGUMENTS BUT THAT REQUIRES REQUIRED AS NAMED ARGUMENTS CANNOT BE NULL

// class GradientContainer extends StatelessWidget {

//   // GradientContainer({key}): super(key:key);
//   // or
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors,
//             begin: startalignment,
//             end: endalignment),
//       ),
//       child: const Center(
//         child: StyledText('Hello World'),
//       ),
//     );
//   }
// }
