import 'package:flutter/material.dart';

import 'package:flutter_parallax_effect/sliding_cards_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Home Page'),
      ),
      body: Container(
        child: SlidingCardsView(),
      ),
    );
  }
}
