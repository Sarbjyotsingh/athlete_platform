import 'package:athlete_platform/screens/discussion_detail.dart';
import 'package:athlete_platform/screens/group_details.dart';
import 'package:athlete_platform/screens/start_discussion.dart';
import 'package:athlete_platform/widgets/discussion_card.dart';
import 'package:athlete_platform/widgets/memeber_detail_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscussionList extends StatefulWidget {
  static const String id = 'discussion_list';
  @override
  _DiscussionListState createState() => _DiscussionListState();
}

class _DiscussionListState extends State<DiscussionList> {
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
                  Navigator.pushNamed(context, GroupDetails.id);
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
          'Volleyball for All',
          textAlign: TextAlign.left,
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
                  title: 'Dan Walker (Host)',
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
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
                    'images/person1.jpg',
                  ),
                  userName: 'Me',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle: 'Who want to join our volleyball team?',
                  discussionDescription:
                      'Here is the chance for you all to join our volleyball team who all are intrested can share their numbers in the comments below. ',
                  onPressed: () {
                    Navigator.pushNamed(context, DiscussionDetail.id);
                  },
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  userName: 'Me',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle:
                      'There is a free traning session on our ground.',
                  discussionDescription:
                      'We are organising a free training session who all are intrested can share their details in the comments we will share the venue and location to them. ',
                  onPressed: () {
                    Navigator.pushNamed(context, DiscussionDetail.id);
                  },
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  userName: 'Me',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle: ' Volleyball Playing Tips',
                  discussionDescription:
                      'What if I told you there could be a simple fix that would make your volleyball setting twice as good in just one practice session, would you be interested?  ',
                  onPressed: () {
                    Navigator.pushNamed(context, DiscussionDetail.id);
                  },
                ),
                DiscussionCard(
                  userImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  userName: 'Me',
                  userDescription: 'Coach, Consultant (Univerity of ...',
                  discussionTitle:
                      ' Second episode of the new volleyball podcast is up!',
                  discussionDescription:
                      'Watch the all new episode of volleyball podcast ad share your views in the comments.',
                  onPressed: () {
                    Navigator.pushNamed(context, DiscussionDetail.id);
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
