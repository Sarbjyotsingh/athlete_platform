import 'package:athlete_platform/screens/signup.dart';
import 'package:athlete_platform/widgets/circular_password_text_form_field.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:athlete_platform/widgets/circular_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static const String id = 'signin';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Color _passwordIconColor = Colors.grey;
  bool _toglePasswordIcon = true;
  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome Back",
                      textAlign: TextAlign.center,
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
                    "Don't miss your opportunity.",
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
                    "Sign in to stay updated on Volleyball Unite",
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
                  hintText: 'Email',
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
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontFamily: 'Muli',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircularRaisedButtonWithText(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 30, right: 30),
                    text: 'Sign In',
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
                      Navigator.pushNamed(context, 'feed');
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
                      'New to Volleyball Unite?',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FlatButton(
                      color: Colors.grey.shade600,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, SignUp.id);
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
      ),
    );
  }
}
