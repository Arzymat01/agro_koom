import 'package:agro_koom/constants/color.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.green,
              ),
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/images/rectangle.png',
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 30,
              width: 130,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(5), right: Radius.circular(30)),
                color: Colors.green,
              ),
              child: const Text(
                'AGROKOOM',
                style: TextStyle(
                  fontSize: 20,
                  color: Appcolors.white,
                ),
              ),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
    );
  }
}
