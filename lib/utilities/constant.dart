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
  fontSize: 14.5,
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

const kCreateAndSignInHeadingStyle = TextStyle(
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
        'Create a free personal volleyball profile, connect with others and showcase your achievements to scouts.',
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
        'Create a coaching profile, connect with others & search for available athletes for your program.',
        textAlign: TextAlign.center,
        style: kDescriptionTextStyle,
      ),
    ],
  ),
  Column(
    children: <Widget>[
      Text(
        'Referee',
        style: kHeadingTextStyle,
      ),
      SizedBox(
        height: 50,
      ),
      Text(
        'Create a profile, connect, network, and communicate with the volleyball community and other referees.',
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
        'Create your own Business page for profiling your Association, Institute, or Club and post information to  all followers.',
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
        'Create a profile of volleyball achievements, connect with past teammates and stay linked to the volleyball community.',
        textAlign: TextAlign.center,
        style: kDescriptionTextStyle,
      ),
    ],
  ),
];
