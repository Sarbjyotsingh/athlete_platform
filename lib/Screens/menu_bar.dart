import 'package:athlete_platform/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  List<Slide> slides = [
    Slide(
      centerWidget: Text(
        'Athlete',
        style: kHeadingTextStyle,
      ),
      styleTitle: kHeadingTextStyle,
      backgroundColor: Colors.transparent,
      description:
          'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
      styleDescription: kDescriptionTextStyle,
    ),
    Slide(
      centerWidget: Text(
        'Coach/Recruiter',
        style: kHeadingTextStyle,
      ),
      styleTitle: kHeadingTextStyle,
      backgroundColor: Colors.transparent,
      description:
          'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
      styleDescription: kDescriptionTextStyle,
    ),
    Slide(
      centerWidget: Text(
        'Refree',
        style: kHeadingTextStyle,
      ),
      styleTitle: kHeadingTextStyle,
      backgroundColor: Colors.transparent,
      description:
          'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
      styleDescription: kDescriptionTextStyle,
    ),
    Slide(
      centerWidget: Text(
        'Association',
        style: kHeadingTextStyle,
      ),
      styleTitle: kHeadingTextStyle,
      backgroundColor: Colors.transparent,
      description:
          'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
      styleDescription: kDescriptionTextStyle,
    ),
    Slide(
      centerWidget: Text(
        'Retired',
        style: kHeadingTextStyle,
      ),
      styleTitle: kHeadingTextStyle,
      backgroundColor: Colors.transparent,
      description:
          'Tap into power of your coaching network to zero in on the athletes that are right for your program.',
      styleDescription: kDescriptionTextStyle,
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
          child: Stack(
            children: <Widget>[
              Container(
                child: IntroSlider(
                  slides: slides,
                  colorDot: Colors.grey,
                  isShowSkipBtn: false,
                  nameDoneBtn: 'Skip',
                  colorActiveDot: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
