import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage;
  String name;
  String details;
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment, {super.key});

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: const EdgeInsets.only(
        right: 2.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
        size: 14,
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text (
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 13.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget> [
        Container(
          margin: const EdgeInsets.only(
            left: 20.0
          ),
          child: Row (
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 8.0
                ),
                child: Text (
                  details,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Lato',
                      color: Color(0xFFa3a5a7)
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  star,
                  star,
                  star,
                  star,
                  star
                ],
              )
            ],
          )
        ),
      ],
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text (
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17.0,
          fontFamily: 'Lato'
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
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

    return Row (
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}