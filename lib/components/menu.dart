import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyListTile extends StatelessWidget {
  final String? title;
  final String icon;
  final VoidCallback? onTap;

  MyListTile({this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: SvgPicture.asset(icon),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title!,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
