import 'package:flutter/material.dart';
import 'package:platzi_trips_app/score.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  String descriptionPlace;
  int stars;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);

  @override
  Widget build(BuildContext context) {

    final description = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle (
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Color(0XFF56575A)
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title_stars = Row (
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top: 320,
            left: 20.0,
            right: 20.0
          ),
          child: Text (
            namePlace,
            style: TextStyle(
              fontFamily: "BebasNeue",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container (
          margin: EdgeInsets.only(top: 323.0),
          child: new Score(5, 3.5)
        )
      ],
    );
    return Column(
      children: <Widget>[
        title_stars,
        description,
      ],
    );
  }

}