import 'package:agro_koom/view/home_view.dart';
import 'package:agro_koom/view/messeage_view.dart';
import 'package:agro_koom/view/profile_view.dart';
import 'package:agro_koom/view/searh_view.dart';
import 'package:agro_koom/view/shop_view.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
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
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          showElevation: true,
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              title: Text('sddf'),
              icon: SvgPicture.asset('assets/icons/search.svg'),
            ),
            FlashyTabBarItem(
              icon: SvgPicture.asset('assets/icons/search.svg'),
              title: const Text('Contact'),
            ),
            FlashyTabBarItem(
              icon: SvgPicture.asset('assets/icons/shop.svg'),
              title: const Text('Events'),
            ),
            FlashyTabBarItem(
              icon: SvgPicture.asset('assets/icons/message.svg'),
              title: const Text('Quick Scan'),
            ),
            FlashyTabBarItem(
              icon: SvgPicture.asset('assets/icons/user.svg'),
              title: const Text('Quick Scan'),
            ),
          ],
        ),
//you have to just do changes here...
        body: pageList.elementAt(_selectedIndex));
  }
}
