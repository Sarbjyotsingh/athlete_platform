import 'package:athlete_platform/screens/SignupFifth.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpForth extends StatefulWidget {
  static const String id = 'signupforth';

  @override
  State<StatefulWidget> createState() {
    return _SignUpForthState();
  }
}

class _SignUpForthState extends State<SignUpForth> {
  @override
  Widget build(BuildContext context) {
    void _bottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 140,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListTile(
                      leading: Icon(
                        Icons.camera,
                        color: Colors.black,
                      ),
                      title: Text('Camera'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListTile(
                      leading: Icon(
                        Icons.image,
                        color: Colors.black,
                      ),
                      title: Text('Gallery'),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Upload profile picture",
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Only images with a size lower than 3MB are allowed.",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: _bottomSheet,
                  child: Image.asset('images/signupprofile.png'),
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
                      Navigator.pushNamed(context, SignUpFifth.id);
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
