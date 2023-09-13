import 'package:flutter/material.dart';

class MesseageView extends StatefulWidget {
  const MesseageView({Key? key}) : super(key: key);

  @override
  _MesseageViewState createState() => _MesseageViewState();
}

class _MesseageViewState extends State<MesseageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MessagePage'),
      ),
    );
  }
}
