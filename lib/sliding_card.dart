import 'package:flutter/material.dart';

import 'package:flutter_parallax_effect/card_content.dart';

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String assetName;
  final double offset;

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.date,
    @required this.assetName,
    @required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.asset(
              'assets/$assetName',
              height: MediaQuery.of(context).size.height * 0.3,
              alignment: Alignment(-offset.abs(), 0),
              fit: BoxFit.none,
            ),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: CardContent(
              name: name,
              date: date,
            ),
          ),
        ],
      ),
    );
  }
}
