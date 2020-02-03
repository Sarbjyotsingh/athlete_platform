import 'package:athlete_platform/utilities/constant.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:athlete_platform/widgets/memeber_detail_card.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  static const String id = 'post';
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Share Post',
                    style: kCreateAndEditPageHeadingStyle,
                  ),
                ),
                MemberDetailCard(
                  title: 'John Deo',
                  subtitle: 'Instructor',
                  backgroundImage: AssetImage('images/avatar.png'),
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
                      hintText: 'Share your thoughts ...',
                      hintStyle: TextStyle(
                        fontFamily: 'Muli',
                        fontSize: 14,
                        color: Colors.red,
                      ),
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
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(
                            left: 5, top: 2, bottom: 2, right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30),
                          ),
                          border: Border.all(
                            color: Colors.grey.shade700,
                            width: 1,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.photo,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Media',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Muli',
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(
                            left: 5, top: 2, bottom: 2, right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30),
                          ),
                          border: Border.all(
                            color: Colors.grey.shade700,
                            width: 1,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.videocam,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Video',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Muli',
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
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
                    CircularRaisedButtonWithText(
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
                    SizedBox(
                      width: 20,
                    ),
                    CircularRaisedButtonWithText(
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
      ),
    );
  }
}
