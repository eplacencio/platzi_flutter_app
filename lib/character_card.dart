import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {

  String pathImage = 'assets/images/IMG_2142.JPG';
  String name = 'Byakuya Kuchiki';
  String title = 'Captain';

  CharacterCard(this.pathImage, this.name, this.title, {super.key, });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
        margin: const EdgeInsets.only(
          right: 20.0
        ),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage (
                fit: BoxFit.cover,
                image: AssetImage(pathImage)
            )
        )
    );

    final data = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: const TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w900,
              color: Colors.black87,
              fontSize: 18.0
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 5.0,
          ),
          child: Text(
            title,
            style: const TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.normal,
                color: Colors.black38,
                fontSize: 16.0
            ),
          ),
        )
      ],
    );

    final icon = Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: const Icon(
        Icons.ac_unit,
        color: Colors.white,
        size: 30.0
      ),
    );

    return Container(
      margin: const EdgeInsets.only(
        top: 5.0,
        right: 20.0,
        left: 20.0,
        bottom: 5.0
      ),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const <BoxShadow> [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
            offset: Offset(0.0, 2.0)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              photo,
              data,
            ],
          ),
          icon
        ],
      )
    );


  }
}