import 'package:agro_koom/constants/color.dart';
import 'package:agro_koom/view/profile_view.dart';
import 'package:flutter/material.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  _ShopViewState createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.textfieldColor,
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        children: [
          const SearchCard(),
          Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/klub2.png'),
              ),
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    Text('9 оценок'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                      child: Text('Отзывы(9)'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 150, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                  child: Text(
                    'Клубника, Клери',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Универсальность «Клери», она подходит для заморозки, консервирования и употребления в свежем виде....',
                  style: TextStyle(
                    color: Appcolors.textColor,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Цена (кг)',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '40 Р',
                      style: TextStyle(
                        fontSize: 20,
                        color: Appcolors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
