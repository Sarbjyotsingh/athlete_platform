import 'package:athlete_platform/screens/signupforth.dart';
import 'package:athlete_platform/widgets/circular_drop_down_menu.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:athlete_platform/widgets/circular_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpThird extends StatefulWidget {
  static const String id = 'signupthird';

  @override
  State<StatefulWidget> createState() {
    return _SignUpThirdState();
  }
}

class _SignUpThirdState extends State<SignUpThird> {
  String _genderSelected = 'Gender';
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
                      "Tell us more about you",
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
                      "Secondary Email",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularTextFormField(
                  hintText: 'Ex.johndeo@gmail.com(If less than 18yrs)',
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
                      "Enter City",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularTextFormField(
                  hintText: 'Enter City',
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
                      "Enter Province Name",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16.0,
                        fontFamily: 'Muli Regular',
                      ),
                    ),
                  ),
                ),
                CircularTextFormField(
                  hintText: 'Ex. Toranto',
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
                      "Gender",
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
                      _genderSelected = value;
                    });
                  },
                  hintText: _genderSelected,
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircularRaisedButtonWithText(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 35, right: 35),
                    text: 'Next',
                    textColor: Colors.white,
                    buttonColor: Colors.black,
                    borderColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpForth.id);
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
