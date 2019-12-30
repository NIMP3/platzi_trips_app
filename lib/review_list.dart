import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Varuna Yasas", "1 review 5 photos", "It is a long established fact.", 3.5),
        Review("assets/img/photo1.jpg", "Karla Giraldo", "2 review 2 photos", "It is a long established fact that a reader.", 2.5),
      ],
    );
  }
}
