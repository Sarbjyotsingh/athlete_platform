import 'package:flutter/material.dart';

const kHeadingTextStyle = TextStyle(
  fontSize: 32.0,
  fontFamily: 'Muli',
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  wordSpacing: 3,
  color: Colors.white,
);

const kDescriptionTextStyle = TextStyle(
  fontFamily: 'Muli',
  fontSize: 16.0,
  wordSpacing: 2,
  letterSpacing: 2,
  color: Colors.white,
);

const kTransparentBackgroundColor = Color(0xFF1AFFFFFF);

const kTextFieldNameStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontFamily: 'Muli',
);
const kTextFieldHintTextDecoration = TextStyle(
  fontFamily: 'Muli',
  fontSize: 14,
  color: Colors.grey,
);
const kCreateAndEditPageHeadingStyle = TextStyle(
  color: Color(0xFF555555),
  fontSize: 30,
  fontWeight: FontWeight.w900,
  fontFamily: 'Muli',
);

const kCreatePageTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'Muli',
  color: Colors.grey,
);
const double kMemberImageRadius = 15;

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
