import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  const Container2({
    Key? key,
    required this.imag2,
  }) : super(key: key);
  final String imag2;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        width: 190,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imag2)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          color: Colors.white,
          border: Border(
            left: BorderSide(
              color: Colors.green,
              width: 3,
            ),
          ),
        ),
        child: Text(''));
  }
}
