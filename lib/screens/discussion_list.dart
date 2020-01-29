import 'package:athlete_platform/screens/discussion_detail.dart';
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
        automaticallyImplyLeading: false,
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
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: <Widget>[
                Text(
                  '2019 Holiday 4\'s Beach Volleyball Tournament.',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w700,
                  ),
                ),
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
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
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
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
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
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
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
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
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
                  discussionTitle: 'Discussion title will go here ...',
                  discussionDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
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
