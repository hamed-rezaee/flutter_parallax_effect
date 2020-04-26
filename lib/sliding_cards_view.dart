import 'package:flutter/material.dart';
import 'package:flutter_parallax_effect/sliding_card.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();

    pageController = PageController(viewportFraction: 0.8);

    pageController.addListener(
      () => setState(() => pageOffset = pageController.page),
    );
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name: 'Shenzhen GLOBAL DESIGN AWARD 2018',
            date: '4.20-30',
            assetName: '01.jpg',
            offset: pageOffset,
          ),
          SlidingCard(
            name: 'Dawan District, Guangdong Hong Kong and Macao',
            date: '4.28-31',
            assetName: '02.jpg',
            offset: pageOffset - 1,
          ),
          SlidingCard(
            name: 'Shenzhen GLOBAL DESIGN AWARD 2018',
            date: '4.20-30',
            assetName: '03.jpg',
            offset: pageOffset - 2,
          ),
          SlidingCard(
            name: 'Dawan District, Guangdong Hong Kong and Macao',
            date: '4.28-31',
            assetName: '04.jpg',
            offset: pageOffset - 3,
          ),
        ],
      ),
    );
  }
}
