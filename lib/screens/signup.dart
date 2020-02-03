import 'package:athlete_platform/screens/signupsecond.dart';
import 'package:athlete_platform/widgets/circular_date_time_picker.dart';
import 'package:athlete_platform/widgets/circular_password_text_form_field.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:athlete_platform/widgets/circular_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const String id = 'signup';

  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  Color _passwordIconColor = Colors.grey;
  bool _toglePasswordIcon = true;
  bool _hidePassword = true;
  dynamic _dateTime = 'DOB: DD-YY-MM';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Join Now",
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
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Don't miss this opportunity.",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "Join now to Volleyball Unite and be a part of this huge community",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16.0,
                          fontFamily: 'Muli Regular',
                        ),
                      ),
                    ),
                  ),
                  CircularTextFormField(
                    hintText: 'Ex. John Deo',
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
                        "Email",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16.0,
                          fontFamily: 'Muli Regular',
                        ),
                      ),
                    ),
                  ),
                  CircularTextFormField(
                    hintText: 'johndeo@gmail.com',
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
                        "Date of Birth",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16.0,
                          fontFamily: 'Muli Regular',
                        ),
                      ),
                    ),
                  ),
                  CircularDateTimePicker(
                    date: _dateTime,
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime(1995),
                        firstDate: DateTime(1990),
                        lastDate: DateTime(2019),
                      ).then((date) {
                        setState(() {
                          _dateTime = date != null
                              ? '${date.day} - ${date.month} - ${date.year}'
                              : _dateTime;
                        });
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16.0,
                          fontFamily: 'Muli Regular',
                        ),
                      ),
                    ),
                  ),
                  CircularPasswordTextFormField(
                    hintText: 'Password',
                    borderColor: Colors.grey,
                    textFieldColor: Colors.transparent,
                    hintTextStyle: TextStyle(
                      fontFamily: 'Muli',
                    ),
                    obscureText: _hidePassword,
                    iconColor: _passwordIconColor,
                    onIconPressed: () {
                      setState(() {
                        if (_toglePasswordIcon) {
                          _hidePassword = false;
                          _passwordIconColor = Colors.black;
                        } else {
                          _hidePassword = true;
                          _passwordIconColor = Colors.grey;
                        }
                        _toglePasswordIcon = !_toglePasswordIcon;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircularRaisedButtonWithText(
                      padding: EdgeInsets.only(
                          top: 8, bottom: 8, left: 20, right: 20),
                      text: 'Continue',
                      textColor: Colors.white,
                      buttonColor: Colors.black,
                      borderColor: Colors.black,
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Muli Regular',
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpSecond.id);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          color: Colors.grey,
                          width: 50,
                          height: 2,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Or sign in using",
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                                fontFamily: 'Muli',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: 50,
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircularRaisedButtonWithText(
                          padding: EdgeInsets.only(
                              top: 12, bottom: 12, left: 30, right: 30),
                          text: 'Facebook',
                          textColor: Colors.white,
                          buttonColor: Colors.indigo,
                          borderColor: Colors.indigo,
                          textStyle: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        CircularRaisedButtonWithText(
                          padding: EdgeInsets.only(
                              top: 12, bottom: 12, left: 40, right: 40),
                          text: 'Google',
                          textColor: Colors.white,
                          buttonColor: Colors.red,
                          borderColor: Colors.red,
                          textStyle: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already a member?',
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        color: Colors.grey.shade600,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
            ),
          ),
        ));
  }
}
