import 'package:agro_koom/constants/color.dart';

import 'package:flutter/material.dart';

import '../main/main_view.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 130, 12, 10),
                child: Image.asset('assets/images/icon.png'),
              ),
            ],
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'AGROKOOM',
                  style:
                      TextStyle(fontSize: 45, color: Appcolors.white, shadows: [
                    Shadow(
                      offset: Offset(-1.5, -1.5),
                      color: Appcolors.green,
                    )
                  ]),
                ),
                Text(
                  'Фермер менен ишкерди ортомчусуз \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tбайланыштыруу',
                  style: TextStyle(
                    fontSize: 20,
                    color: Appcolors.white,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(160, 50, 55, 80),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MianView(),
                      ),
                    );
                  },
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                      color: Appcolors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
