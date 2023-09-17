import 'package:flutter/material.dart';

import '../constants/color.dart';

class ContainerUser extends StatelessWidget {
  const ContainerUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 90,
      width: 80,
      color: Appcolors.white,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(30),
              ),
              color: Appcolors.green,
            ),
            height: 60,
            width: 60,
            child: Image.asset('assets/images/profile.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 5, 25, 10),
            child: Column(
              children: [
                Text(
                  'Аман Аманович',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'Предприниматели',
                  style: TextStyle(color: Appcolors.textColor),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: 20,
                  width: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Appcolors.colorContainer,
                  ),
                  child: Center(
                    child: Text(
                      'Куплю яблоку',
                      style: TextStyle(color: Appcolors.green),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
