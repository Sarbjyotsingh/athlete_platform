import 'package:athlete_platform/utilities/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'signin.dart';

class MenuBar extends StatefulWidget {
  static String id = 'menu_bar';
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  String _buttonText = 'Skip';
  int _currentMenuPage = 0;

  void screenChange(int index) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.7),
              BlendMode.srcOver,
            ),
            image: AssetImage('images/background_menu_bar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: CarouselSlider(
                  enableInfiniteScroll: false,
                  viewportFraction: 1.0,
                  items: kMenuItem,
                  onPageChanged: (index) {
                    setState(() {
                      _currentMenuPage = index;
                      if (_currentMenuPage == 4) {
                        _buttonText = 'Continue';
                      } else {
                        _buttonText = 'Skip';
                      }
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 35.0,
                          height: 4.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentMenuPage == 0
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                        ),
                        Container(
                          width: 35.0,
                          height: 4.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentMenuPage == 1
                                ? Colors.white
                                : Colors
                                    .transparent, //change color according to index
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                        ),
                        Container(
                          width: 35.0,
                          height: 4.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentMenuPage == 2
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                        ),
                        Container(
                          width: 35.0,
                          height: 4.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentMenuPage == 3
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                        ),
                        Container(
                          width: 35.0,
                          height: 4.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentMenuPage == 4
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      child: Text(
                        _buttonText,
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, SignIn.id);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
