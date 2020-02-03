import 'package:athlete_platform/screens/SignupSixth.dart';
import 'package:athlete_platform/widgets/circular_drop_down_menu.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpFifth extends StatefulWidget {
  static const String id = 'signupfifth';
  @override
  _SignUpFifthState createState() => _SignUpFifthState();
}

class _SignUpFifthState extends State<SignUpFifth> {
  String _positionTitle = 'Select Position Title';
  String _coachingLevel = 'Coaching Level';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Your Work Profile",
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Selct Position Title",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularDropDownMenu(
                  dropDownMenuItem: [
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Head Coach/Recruiter'),
                      ),
                      value: 'Head Coach/Recruiter',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Assistant Coach'),
                      ),
                      value: 'Assistant Coach',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _positionTitle = value;
                    });
                  },
                  hintText: _positionTitle,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Coaching Level",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularDropDownMenu(
                  dropDownMenuItem: [
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('School'),
                      ),
                      value: 'School',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Club'),
                      ),
                      value: 'Club',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Institute'),
                      ),
                      value: 'Institute',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _coachingLevel = value;
                    });
                  },
                  hintText: _coachingLevel,
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircularRaisedButtonWithText(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 30, right: 30),
                    text: 'Next',
                    textColor: Colors.white,
                    buttonColor: Colors.black,
                    borderColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Muli Regular',
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpSixth.id);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
