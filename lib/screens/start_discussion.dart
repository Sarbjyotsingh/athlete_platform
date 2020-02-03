import 'package:athlete_platform/utilities/constant.dart';
import 'package:athlete_platform/widgets/circular_button_with_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartDiscussion extends StatefulWidget {
  static const String id = 'start_discussion';
  @override
  _StartDiscussionState createState() => _StartDiscussionState();
}

class _StartDiscussionState extends State<StartDiscussion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Start Discussion',
                  style: kCreateAndEditPageHeadingStyle,
                ),
              ),
              Container(
                height: 120,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 2, bottom: 10, right: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Share your thoughts',
                    hintStyle: kTextFieldHintTextDecoration,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircularButtonWithText(
                    text: 'Cancel',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    borderColor: Colors.grey,
                    buttonColor: Colors.white,
                    textColor: Colors.grey,
                    textStyle: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Muli',
                    ),
                  ),
                  CircularButtonWithText(
                    text: 'Save',
                    onPressed: () {},
                    borderColor: Colors.red,
                    buttonColor: Colors.red,
                    textColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Muli',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
