import 'package:athlete_platform/screens/edit_group.dart';
import 'package:athlete_platform/screens/invite_member.dart';
import 'package:athlete_platform/screens/member_listing.dart';
import 'package:athlete_platform/widgets/ButtonWithUnderline.dart';
import 'package:athlete_platform/widgets/member_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GroupDetails extends StatefulWidget {
  static const String id = 'group_detail';
  @override
  _GroupDetailsState createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Start Discussion',
          style: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Muli',
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color(0xFFf01b01),
        onPressed: () {},
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150,
                  padding: EdgeInsets.only(right: 10),
                  constraints: BoxConstraints.tightFor(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/detail_card.jpg'),
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
                        DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF333333).withOpacity(0.5),
                              ),
                              child: Icon(
                                Icons.more_vert,
                                color: Color(0xFFe1e1e1),
                              ),
                            ),
                            elevation: 0,
                            onChanged: (value) {
                              if (value == 'Edit') {
                                Navigator.pushNamed(context, EditGroup.id);
                              }
                            },
                            items: <DropdownMenuItem>[
                              DropdownMenuItem(
                                child: Text('Edit'),
                                value: 'Edit',
                              ),
                              DropdownMenuItem(
                                child: Text('Delete'),
                                value: 'Delete',
                              ),
                            ],
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
                            Navigator.pushNamed(context, MemberListing.id);
                          },
                          child: Text(
                            'Members',
                            style: TextStyle(
                              fontSize: 10.0,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, MemberListing.id);
                            },
                            child: MemberImages(),
                          ),
                          ButtonWithUnderline(
                            text: 'Invite',
                            underLineColor: Color(0xFFf01b01),
                            textColor: Color(0xFFf01b01),
                            onPressed: () {
                              Navigator.pushNamed(context, InviteMember.id);
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                '2019 Holiday 4\'s Beach Volleyball Tournament.',
                                style: TextStyle(
                                  fontSize: 18,
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
                                      'images/person1.jpg',
                                    ),
                                  ),
                                ),
                                title: Text(
                                  'Dan Walker (Admin)',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                subtitle: Text(
                                  'Coach, Consultant (Univerity of Calgory)',
                                  style: TextStyle(fontSize: 12),
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
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur  ',
                                    ),
                                    TextSpan(
                                      text: 'Read More',
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
                        height: 70,
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
