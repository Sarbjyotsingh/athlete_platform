import 'package:athlete_platform/widgets/circular_drop_down_menu.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:athlete_platform/widgets/circular_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpSixth extends StatefulWidget {
  static const String id = 'SignupScreenSixth';
  @override
  _SignUpSixthState createState() => _SignUpSixthState();
}

class _SignUpSixthState extends State<SignUpSixth> {
  String _genderCoached = 'Select Gender Coached';
  String _selectedLevel = 'Enter Level';

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
                      "Complete coach profile",
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
                  height: 40,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Institute Name",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularTextFormField(
                  hintText: 'Ex. University of Calgary',
                  borderColor: Colors.grey,
                  textFieldColor: Colors.transparent,
                  hintTextStyle: TextStyle(
                    fontFamily: 'Muli',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Institute Team Name",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularTextFormField(
                  hintText: 'Ex. Dinos',
                  borderColor: Colors.grey,
                  textFieldColor: Colors.transparent,
                  hintTextStyle: TextStyle(
                    fontFamily: 'Muli',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Institute Province",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularTextFormField(
                  hintText: 'Ex. Alberta',
                  borderColor: Colors.grey,
                  textFieldColor: Colors.transparent,
                  hintTextStyle: TextStyle(
                    fontFamily: 'Muli',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Gender Coached",
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
                        child: Text('Male'),
                      ),
                      value: 'Male',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Female'),
                      ),
                      value: 'Female',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _genderCoached = value;
                    });
                  },
                  hintText: _genderCoached,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Enter Level",
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
                        child: Text('U13'),
                      ),
                      value: 'U13',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('U14'),
                      ),
                      value: 'U14',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('U15'),
                      ),
                      value: 'U15',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('U16'),
                      ),
                      value: 'U16',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('U17'),
                      ),
                      value: 'U17',
                    ),
                    DropdownMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('U18'),
                      ),
                      value: 'U18',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedLevel = value;
                    });
                  },
                  hintText: _selectedLevel,
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircularRaisedButtonWithText(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 30, right: 30),
                    text: 'Submit',
                    textColor: Colors.white,
                    buttonColor: Colors.black,
                    borderColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Muli Regular',
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "feed");
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
