import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startalignment=Alignment.topLeft; // this is known during compiletime
// final startalignment=somefunction(); //use it when the value is not known before compilation
// Alignment? test; // creating Alignment type object which can be null or an Alignment object
const endalignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  // GradientContainer({key}): super(key:key);
  // or
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.amber, Colors.red],
            begin: startalignment,
            end: endalignment),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
