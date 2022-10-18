import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int allStars;
  String placeDescription;

  DescriptionPlace(this.namePlace, this.allStars, this.placeDescription, {super.key});

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final emptyStar = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStars = Row (
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.center,
          )
        ),
        Row(
          children: <Widget>[
              star,
              star,
              star,
              starHalf,
              emptyStar,
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: <Widget>[
          Text(
            placeDescription,
            style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 16.0,
                color: Colors.black45,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      )
    );

    final descriptionPlace = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        description,
        ButtonPurple('Navigate')
      ],
    );

    return descriptionPlace;
  }
}