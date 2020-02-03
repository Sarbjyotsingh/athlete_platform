import 'package:athlete_platform/screens/discussion_detail_non_user_post.dart';
import 'package:athlete_platform/screens/start_discussion.dart';
import 'package:athlete_platform/widgets/discussion_card.dart';
import 'package:athlete_platform/widgets/memeber_detail_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscussionListNonUserPost extends StatefulWidget {
  static const String id = 'discussion_list_non_user_post';
  @override
  _DiscussionListNonUserPostState createState() =>
      _DiscussionListNonUserPostState();
}

class _DiscussionListNonUserPostState extends State<DiscussionListNonUserPost> {
  void _bottomSheetGroupInfo() {
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
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    title: Text('Group Info'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

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
        onPressed: () {
          Navigator.pushNamed(context, StartDiscussion.id);
        },
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
            size: 30,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '2020 Holiday 1\'s Beach Volleyball Tournament.',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Muli',
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: _bottomSheetGroupInfo,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: <Widget>[
                MemberDetailCard(
                  title: 'Lana Henrikssen (Host)',
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  subtitle: 'Coach, Consultant (Univerity of Calgory)',
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Discussions (10)',
                      style: TextStyle(
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  userName: 'Lana Henrikssen',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, DiscussionDetailsNonUserPost.id);
                  },
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  userName: 'Lana Henrikssen',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, DiscussionDetailsNonUserPost.id);
                  },
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  userName: 'Lana Henrikssen',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, DiscussionDetailsNonUserPost.id);
                  },
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  userName: 'Lana Henrikssen',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, DiscussionDetailsNonUserPost.id);
                  },
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  userName: 'Lana Henrikssen',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, DiscussionDetailsNonUserPost.id);
                  },
                ),
                SizedBox(
                  height: 120,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
