import 'package:agro_koom/view/home_view.dart';
import 'package:agro_koom/view/messeage_view.dart';
import 'package:agro_koom/view/profile_view.dart';
import 'package:agro_koom/view/searh_view.dart';
import 'package:agro_koom/view/shop_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MianView extends StatefulWidget {
  const MianView({super.key});

  @override
  State<MianView> createState() => _MianViewState();
}

class _MianViewState extends State<MianView> {
  int _selectedIndex = 0;
  List<Widget> pageList = [
    HomeView(),
    SearhView(),
    ShopView(),
    MesseageView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/icons/search.svg'),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/icons/shop.svg'),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/icons/message.svg'),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/icons/user.svg'),
          ),
        ],
      ),
      body: pageList.elementAt(_selectedIndex),
    );
  }
}
