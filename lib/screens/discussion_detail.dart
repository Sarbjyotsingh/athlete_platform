import 'package:athlete_platform/utilities/constant.dart';
import 'package:athlete_platform/widgets/discussion_card.dart';
import 'package:athlete_platform/widgets/reply_comment_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscussionDetail extends StatefulWidget {
  static const String id = 'discussion_detail';
  @override
  _DiscussionDetailState createState() => _DiscussionDetailState();
}

class _DiscussionDetailState extends State<DiscussionDetail> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Discussion title will go here',
            style: TextStyle(
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: _bottomSheet,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 13, right: 10),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 3,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consecr adipiscing elit, sed do eiusmod tempor incididu. consectetur adipiscing elit, sed do eiusmod  incididunt.',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.only(top: 5),
                  padding:
                      EdgeInsets.only(left: 10, top: 2, bottom: 10, right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey.shade300.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Enter your comment here',
                          hintStyle: kTextFieldHintTextDecoration,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xFFf01b01),
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(5),
                                right: Radius.circular(5),
                              ),
                            ),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 4, bottom: 4),
                            child: Text(
                              'Post',
                              style: TextStyle(
                                fontFamily: 'Muli',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'View more comments',
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
                ReplyCommentWidget(
                  userName: 'Rene',
                  userDescription: 'Athelete',
                  userComment: 'I want to join the team ',
                  userImage: AssetImage(
                    'images/person2.jpg',
                  ),
                ),
                ReplyCommentWidget(
                  userName: 'Me',
                  userDescription: 'Coach, Consultant...',
                  userComment: 'Can you please share your email id.',
                  userImage: AssetImage(
                    'images/person1.jpg',
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
