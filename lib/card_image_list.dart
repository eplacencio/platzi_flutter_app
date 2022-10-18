import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/images/bg1.png'),
          CardImage('assets/images/bg2.png'),
          CardImage('assets/images/bg3.jpg'),
          CardImage('assets/images/bg5.jpg'),
          CardImage('assets/images/bg6.jpg'),
        ],
      ),
    );
  }
}