import 'package:flutter/material.dart';

const kHeadingTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Muli',
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  wordSpacing: 3,
);

const kDescriptionTextStyle = TextStyle(
  fontFamily: 'Muli',
  fontSize: 16.0,
  letterSpacing: 2.5,
);

const kTransparentBackgroundColor = Color(0xFF1AFFFFFF);

final List<Widget> kMenuItem = [
  Column(
    children: <Widget>[
      Text(
        'Athlete',
        style: kHeadingTextStyle,
      ),
      SizedBox(
        height: 50,
      ),
      Text(
        'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
        textAlign: TextAlign.center,
        style: kDescriptionTextStyle,
      ),
    ],
  ),
  Column(
    children: <Widget>[
      Text(
        'Coach/Recruiter',
        style: kHeadingTextStyle,
      ),
      SizedBox(
        height: 50,
      ),
      Text(
        'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
        textAlign: TextAlign.center,
        style: kDescriptionTextStyle,
      ),
    ],
  ),
  Column(
    children: <Widget>[
      Text(
        'Refree',
        style: kHeadingTextStyle,
      ),
      SizedBox(
        height: 50,
      ),
      Text(
        'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
        textAlign: TextAlign.center,
        style: kDescriptionTextStyle,
      ),
    ],
  ),
  Column(
    children: <Widget>[
      Text(
        'Association',
        style: kHeadingTextStyle,
      ),
      SizedBox(
        height: 50,
      ),
      Text(
        'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
        textAlign: TextAlign.center,
        style: kDescriptionTextStyle,
      ),
    ],
  ),
  Column(
    children: <Widget>[
      Text(
        'Retired',
        style: kHeadingTextStyle,
      ),
      SizedBox(
        height: 50,
      ),
      Text(
        'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
        textAlign: TextAlign.center,
        style: kDescriptionTextStyle,
      ),
    ],
  ),
];
