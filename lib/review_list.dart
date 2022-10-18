import 'package:flutter/material.dart';
import 'package:apps/review.dart';

class ReviewListObject {
  String photo;
  String name;
  String details;
  String comment;
  ReviewListObject(this.photo, this.name, this.details, this.comment);
}

class ReviewList extends StatelessWidget {

  List <ReviewListObject> userList = [
    ReviewListObject('assets/images/IMG_2142.JPG', 'Byakuya Kuchiki', '1 review 5 photos', 'There is an amazing place'),
    ReviewListObject('assets/images/IMG_2144.JPG', 'Ulquiorra Chifer', '5 review 10 photos', 'There is an amazing place'),
    ReviewListObject('assets/images/IMG_2143.JPG', 'Gin Ichimaru', '8 review 10 photos', 'There is an amazing place')
  ];

  ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: userList.map((user) {
        return Review(user.photo, user.name, user.details, user.comment);
      }).toList()
    );
  }
}