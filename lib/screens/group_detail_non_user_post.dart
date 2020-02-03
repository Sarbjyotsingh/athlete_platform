import 'package:athlete_platform/screens/discussion_list_non_user_post.dart';
import 'package:athlete_platform/screens/member_listing_non_user_post.dart';
import 'package:athlete_platform/widgets/circular_raised_button_with_text.dart';
import 'package:athlete_platform/widgets/member_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GroupDetailNonUserPost extends StatefulWidget {
  static const String id = 'group_detail_non_user_post';
  @override
  _GroupDetailNonUserPostState createState() => _GroupDetailNonUserPostState();
}

class _GroupDetailNonUserPostState extends State<GroupDetailNonUserPost> {
  @override
  Widget build(BuildContext context) {
    void _bottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 80,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListTile(
                      title: Text('Report Abuse'),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  padding: EdgeInsets.only(right: 10),
                  constraints: BoxConstraints.tightFor(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/center_card.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_backspace,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF333333).withOpacity(0.5),
                              ),
                              child: Icon(
                                Icons.more_vert,
                                color: Color(0xFFe1e1e1),
                              ),
                            ),
                            onPressed: _bottomSheet,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 13, right: 10, top: 10),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, MemberListingNonUserPost.id);
                          },
                          child: Text(
                            'Members',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, MemberListingNonUserPost.id);
                            },
                            child: MemberImages(),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                '2020 Holiday 1\'s Beach Volleyball Tournament.',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Muli',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                leading: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey.shade800,
                                      width: 1,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                      'images/person2.jpg',
                                    ),
                                  ),
                                ),
                                title: Text(
                                  'Lana Henrikssen (Admin)',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                subtitle: Text(
                                  'Coach (Univerity of Calgory)',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Muli',
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Read More',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap =
                                            () => print('Read More Clicked'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircularRaisedButtonWithText(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 30, right: 30),
                            text: 'Reject',
                            textStyle: TextStyle(
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w700,
                            ),
                            textColor: Colors.grey.shade700,
                            buttonColor: Colors.white,
                            borderColor: Colors.grey,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircularRaisedButtonWithText(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 30, right: 30),
                            text: 'Accept',
                            textStyle: TextStyle(
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w700,
                            ),
                            textColor: Colors.white,
                            buttonColor: Colors.red,
                            borderColor: Colors.red,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, DiscussionListNonUserPost.id);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
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
