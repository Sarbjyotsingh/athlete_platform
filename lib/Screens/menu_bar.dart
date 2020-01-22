import 'package:athlete_platform/utilities/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  List<Widget> scrollItem = [
    Column(
      children: <Widget>[
        Text(
          'Athlete',
          style: kHeadingTextStyle,
        ),
        SizedBox(height: 40.0),
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
          'Coach / Recruiter',
          style: kHeadingTextStyle,
        ),
        SizedBox(height: 40.0),
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
        SizedBox(height: 40.0),
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
        SizedBox(height: 40.0),
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
        SizedBox(height: 40.0),
        Text(
          'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
          textAlign: TextAlign.center,
          style: kDescriptionTextStyle,
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      bottomNavigationBar: BottomAppBar(
//        color: Colors.transparent,
//        child: FlatButton(
//          child: Text('Skip'),
//          color: Colors.transparent,
//          onPressed: () {},
//        ),
//      ),
      body: Container(
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.srcOver),
            image: AssetImage('images/background_menu_bar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            child: CarouselSlider(
              height: double.infinity,
              items: scrollItem,
              viewportFraction: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
