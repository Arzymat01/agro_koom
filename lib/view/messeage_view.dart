// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:agro_koom/constants/color.dart';

class MesseageView extends StatefulWidget {
  const MesseageView({Key? key}) : super(key: key);

  @override
  _MesseageViewState createState() => _MesseageViewState();
}

class _MesseageViewState extends State<MesseageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.textfieldColor,
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/userimag.png',
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    'Фермер Асан',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Онлайн',
                    style: TextStyle(
                      fontSize: 12,
                      color: Appcolors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Appcolors.green,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: Appcolors.green,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            ContainerMessage(),
          ],
        ),
      ),
    );
  }
}

class ContainerMessage extends StatelessWidget {
  ContainerMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(5),
        ),
        color: Appcolors.white,
      ),
      child: Center(
        child: Text(
          'Кандай Аман, Түшүм кандай болду?',
          style: TextStyle(
            color: Appcolors.white,
          ),
        ),
      ),
    );
  }
}
