import 'package:athlete_platform/screens/discussion_list.dart';
import 'package:athlete_platform/screens/edit_group.dart';
import 'package:athlete_platform/screens/invite_member.dart';
import 'package:athlete_platform/screens/member_listing.dart';
import 'package:athlete_platform/widgets/ButtonWithUnderline.dart';
import 'package:athlete_platform/widgets/member_images.dart';
import 'package:flutter/material.dart';

class GroupDetails extends StatefulWidget {
  static const String id = 'group_detail';
  @override
  _GroupDetailsState createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {
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
                    Navigator.pushNamed(context, EditGroup.id);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('Edit'),
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
                      leading: Icon(Icons.delete),
                      title: Text('Delete'),
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
        onPressed: () {
          Navigator.pushNamed(context, DiscussionList.id);
        },
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                            Navigator.pushNamed(context, MemberListing.id);
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
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Volleyball for All',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.w700,
                                  ),
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
                                          'The site specializes in volleyball (exercises, analysis, technique, tactics, positions play, game news, discussion, the opinions of the trainers) Thank you for your presence at the site Greetings to you.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
//                                    TextSpan(
//                                      text: ' Read More',
//                                      style: TextStyle(
//                                        decoration: TextDecoration.underline,
//                                        fontWeight: FontWeight.w700,
//                                      ),
//                                      recognizer: TapGestureRecognizer()
//                                        ..onTap =
//                                            () => print('Read More Clicked'),
//                                    ),
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
