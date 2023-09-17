import 'package:agro_koom/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/containerprofil.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.textfieldColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Предприниматели',
          style: TextStyle(color: Appcolors.green),
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
      body: ListView(
        children: [
          SearchCard(),
          const ContainerUser(),
          const ContainerUser(),
          const ContainerUser(),
          const ContainerUser(),
          const ContainerUser(),
          const ContainerUser(),
        ],
      ),
    );
  }
}

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Appcolors.white,
          enabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 11,
          ),
          hintText: 'Поиск',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: Card(
            color: Appcolors.green,
            child: SvgPicture.asset('assets/icons/search2.svg',
                height: 5, width: 5, fit: BoxFit.scaleDown),
          ),
        ),
      ),
    );
  }
}
