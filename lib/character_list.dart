import 'package:flutter/material.dart';
import 'character_card.dart';

class CharacterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: <Widget>[
          CharacterCard('assets/images/IMG_1794.JPG', 'Elizabeth', 'The Angel'),
          CharacterCard('assets/images/IMG_1805.JPG', 'Meliodas', 'The Captain'),
          CharacterCard('assets/images/IMG_1803.JPG', 'Merlin', 'The Magician'),
          CharacterCard('assets/images/IMG_1813.JPG', 'Elaine', 'The Fairy'),
          CharacterCard('assets/images/IMG_1814.JPG', 'Ban', 'The Immortal'),
          CharacterCard('assets/images/IMG_2110.JPG', 'Scannor', 'The sun'),
        ],
      ),
    );
  }
}