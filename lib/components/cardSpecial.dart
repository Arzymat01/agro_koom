import 'package:flutter/material.dart';

import '../constants/color.dart';

class Specialist extends StatelessWidget {
  const Specialist({
    Key? key,
    required this.imag,
    required this.text,
  }) : super(key: key);

  final String imag;
  final String text;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Appcolors.green),
          height: 50,
          width: 62,
          child: Image.asset(
            imag,
            height: 75,
            width: 55,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            color: Appcolors.textColor,
          ),
        )
      ],
    );
  }
}
