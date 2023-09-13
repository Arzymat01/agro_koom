import 'package:flutter/material.dart';

class SearhView extends StatefulWidget {
  const SearhView({Key? key}) : super(key: key);

  @override
  _SearhViewState createState() => _SearhViewState();
}

class _SearhViewState extends State<SearhView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchPage'),
      ),
    );
  }
}
