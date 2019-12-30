import 'package:flutter/material.dart';

class Score extends StatelessWidget {

  List<Widget> stars = new List<Widget>();

  double total = 5;
  double score = 0;

  Score(this.total, this.score);

  @override
  Widget build(BuildContext context) {
    final star_half = Container (
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star_border = Container (
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container (
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    int star_half_num = (((score.round() + (total-score).round())) - total).round();
    int star_num = score.round() - star_half_num;
    int star_border_num = total.round() - (star_num + star_half_num);

    stars.addAll(getStars(star_num, star));
    stars.addAll(getStars(star_half_num, star_half));
    stars.addAll(getStars(star_border_num, star_border));

    return Row(
      children: stars,
    );
  }

  List<Widget> getStars(int num, Widget start) {
    List<Widget> list = new List();
    for (var i=0; i<num; i++) list.add(start);
    return list;
  }
}


