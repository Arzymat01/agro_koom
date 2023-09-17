// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:agro_koom/constants/color.dart';
import 'package:agro_koom/view/profile_view.dart';

import '../components/cardSpecial.dart';
import '../components/companenteContainer.dart';
import '../components/container.dart';
import '../components/menu.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 0),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 200).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.textfieldColor,
      appBar: AppBar(
        backgroundColor: Appcolors.appbarColor,
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Appcolors.green,
              ),
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/images/rectangle.png',
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 30,
              width: 130,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(30),
                ),
                color: Appcolors.green,
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
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              setState(() {
                _isOpen = !_isOpen;
                if (_isOpen) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // the main body of the app
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade100,
            alignment: Alignment.topLeft,
          ),
          Positioned(
            // the animated side menu
            right: 0,
            top: 10,
            // bottom: 0,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (BuildContext context, Widget? child) {
                return Container(
                  width: _animation.value,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      border: Border.all(color: Colors.grey)),
                  child: Visibility(
                    visible: _animation.value == 200,
                    child: Column(
                      children: [
                        MyListTile(
                          icon: 'assets/iconsmenu/earth.svg',
                          title: "Главная",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileView(),
                              ),
                            );
                          },
                        ),
                        MyListTile(
                          icon: 'assets/iconsmenu/earth2.svg',
                          title: "Онлайн учеба",
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
                          },
                        ),
                        MyListTile(
                          icon: 'assets/iconsmenu/earth3.svg',
                          title: "Реклама",
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
                          },
                        ),
                        MyListTile(
                          icon: 'assets/iconsmenu/earth4.svg',
                          title: "Категория",
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
                          },
                        ),
                        const Divider(
                          height: 5,
                          thickness: 0.5,
                          indent: 2,
                          endIndent: 0,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyListTile(
                          icon: 'assets/iconsmenu/officce.svg',
                          title: "Мой Кабинет",
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
                          },
                        ),
                        MyListTile(
                          icon: 'assets/iconsmenu/sms.svg',
                          title: "Сообшения",
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
                          },
                        ),
                        MyListTile(
                          icon: 'assets/iconsmenu/purchase.svg',
                          title: "Покупки",
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
                          },
                        ),
                        MyListTile(
                          icon: 'assets/iconsmenu/map.svg',
                          title: "Карта",
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
                          },
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 5, 30, 25),
            child: Column(
              children: [
                Text(
                  'Специалисты',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 55, 25, 30),
            child: Row(
              children: [
                Specialist(
                  imag: 'assets/images/agronom.png',
                  text: 'Агроном',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/doc.png',
                  text: 'Ветеринар',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/korgo.png',
                  text: 'Защита растение',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/sel.png',
                  text: 'Селекционер',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/topyr.png',
                  text: 'Почвовед',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 5, 30, 25),
            child: Column(
              children: [
                Text(
                  'Специалисты',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 55, 25, 30),
            child: Row(
              children: [
                Specialist(
                  imag: 'assets/images/agronom.png',
                  text: 'Агроном',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/doc.png',
                  text: 'Ветеринар',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/korgo.png',
                  text: 'Защита растение',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/sel.png',
                  text: 'Селекционер',
                ),
                SizedBox(
                  width: 6,
                ),
                Specialist(
                  imag: 'assets/images/topyr.png',
                  text: 'Почвовед',
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 150, 25, 30),
            child: ListView(
              children: const <Widget>[
                Text(
                  'Онлайн обучения',
                  style: TextStyle(color: Appcolors.textColor, fontSize: 15),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ContainerProduct(
                        image: 'assets/images/image1.png',
                        text: 'Онлайн обучения',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ContainerProduct(
                        image: 'assets/images/image1.png',
                        text: 'Онлайн обучения',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Реклама',
                  style: TextStyle(
                    fontSize: 15,
                    color: Appcolors.textColor,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container2(
                        imag2: 'assets/images/klubnika.png',
                      ),
                      Container2(
                        imag2: 'assets/images/chop.png',
                      ),
                    ],
                  ),
                ),
                Text('Клубника,Клери'),
                Text(
                  'Универсальность «Клери», \nона подходит для заморозки, \nконсервирования и употребления \nв свежем виде....',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '40 сом',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
