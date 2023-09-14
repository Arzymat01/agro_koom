import 'package:agro_koom/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 30,
              width: 130,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.horizontal(
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
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
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
                            setState(() {
                              _isOpen = !_isOpen;
                              _controller.reverse();
                            });
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            child: Text("Close"),
                            onPressed: () {
                              setState(() {
                                _isOpen = !_isOpen;
                                _controller.reverse();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
