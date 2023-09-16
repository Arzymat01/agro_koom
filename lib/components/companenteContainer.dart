import 'package:flutter/material.dart';

import '../constants/color.dart';

class ContainerProduct extends StatelessWidget {
  const ContainerProduct({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.blue,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 35, 0),
            child: Text(
              text,
              style: const TextStyle(
                  color: Appcolors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Text(
            'За 3 месяца станьте квалифицированным агрономом и научитесь организовывать .....',
            style: TextStyle(fontSize: 10, color: Appcolors.white),
          ),
          const SizedBox(
            width: 20,
            height: 10,
          ),
          Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(color: Appcolors.green, spreadRadius: 3),
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Подробнее',
                style: TextStyle(fontSize: 15, color: Appcolors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
