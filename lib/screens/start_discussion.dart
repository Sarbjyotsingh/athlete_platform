import 'package:athlete_platform/utilities/constant.dart';
import 'package:athlete_platform/widgets/circular_button_with_text.dart';
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
                padding:
                    EdgeInsets.only(left: 10, top: 2, bottom: 10, right: 20),
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
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.videocam,
                          color: Colors.grey,
                        ),
                      ),
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.photo,
                          color: Colors.grey,
                        ),
                      ),
                      height: 40,
                      width: 40,
                    ),
                  ],
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
