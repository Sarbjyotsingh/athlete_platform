import 'package:athlete_platform/screens/signupthird.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpSecond extends StatefulWidget {
  static const String id = 'signupsecond';

  @override
  State<StatefulWidget> createState() {
    return _SignUpSecondState();
  }
}

class _SignUpSecondState extends State<SignUpSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin:
                  EdgeInsets.only(left: 20.0, top: 40, right: 20.0, bottom: 20),

              child: Column(
                children: <Widget>[
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Choose your profile type",
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontSize: 38,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Muli',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Card(
                          color: Colors.white70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10.0, bottom: 20.0),
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      leading:
                                          Image.asset('images/company.png'),
                                      title: Text(
                                        'Athlete',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Muli'),
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "signupthird");
                                      },
                                      subtitle: Text(
                                        'Create a free personal volleyball profile, connect with others and showcase your achievements to scouts',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Muli Regular'),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpThird.id);
                          },
                          child: Card(
                            color: Colors.white70,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, bottom: 20.0),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading:
                                            Image.asset('images/public.png'),
                                        title: Text(
                                          'Coach/Recruiter',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Muli'),
                                        ),
                                        subtitle: Text(
                                          'Create a coaching profile, connect with others & search for available athletes for your program',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Muli Regular'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpThird.id);
                          },
                          child: Card(
                            color: Colors.white70,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, bottom: 20.0),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading:
                                            Image.asset('images/personal.png'),
                                        title: Text(
                                          'Associations/Institutes/Clubs',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Muli'),
                                        ),
                                        subtitle: Text(
                                          'Create your own Business page for profiling your Association, Institute, or Club and post information to  all followers.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Muli Regular'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpThird.id);
                          },
                          child: Card(
                            color: Colors.white70,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, bottom: 20.0),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading:
                                            Image.asset('images/retired.png'),
                                        title: Text(
                                          'Retired',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Muli'),
                                        ),
                                        subtitle: Text(
                                          'Create a profile of volleyball achievements, connect with past teammates and stay linked to the volleyball community',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Muli Regular'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpThird.id);
                          },
                          child: Card(
                            color: Colors.white70,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, bottom: 20.0),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading:
                                            Image.asset('images/refree.png'),
                                        title: Text(
                                          'Referee',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Muli'),
                                        ),
                                        subtitle: Text(
                                          'Create a profile, connect, network, and communicate with the volleyball community and other referees',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Muli Regular'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
            ),
          ),
        ));
  }
}
