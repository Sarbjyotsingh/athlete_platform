import 'package:athlete_platform/screens/create_group.dart';
import 'package:athlete_platform/screens/discussion_list.dart';
import 'package:athlete_platform/screens/edit_group.dart';
import 'package:athlete_platform/screens/group_detail_non_user_post.dart';
import 'package:athlete_platform/screens/member_listing.dart';
import 'package:athlete_platform/screens/member_listing_non_user_post.dart';
import 'package:athlete_platform/screens/start_discussion.dart';
import 'package:athlete_platform/utilities/hamburgermenu.dart';
import 'package:athlete_platform/widgets/group_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GroupListing extends StatefulWidget {
  static const id = 'group_listing';
  @override
  _GroupListingState createState() => _GroupListingState();
}

class _GroupListingState extends State<GroupListing> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget buildAppBar() {
    return AppBar(
      title: Text(
        'Group',
        style: TextStyle(
          color: Color(0xFF555555),
          fontSize: 22,
          fontWeight: FontWeight.w900,
          fontFamily: 'Muli',
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ), // set your color here
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.add_circle_outline,
            color: Colors.red,
            size: 30,
          ),
          onPressed: () {
            Navigator.pushNamed(context, CreateGroup.id);
          },
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: TabBar(
        labelColor: Colors.grey.shade700,
        labelStyle: TextStyle(
          fontFamily: 'Muli',
          fontSize: 16,
        ),
        isScrollable: true,
        indicatorColor: Color(0xFFf01b01),
        tabs: [
          Tab(
            text: 'Created by me',
          ),
          Tab(
            text: 'All Groups',
          ),
          Tab(
            text: 'Pending',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void _bottomSheetUserPost() {
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

    void _bottomSheetNonUserPost() {
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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: hamburgerMenu(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(
            Icons.add_circle_outline,
            size: 35,
          ),
          onPressed: () {
            Navigator.pushNamed(context, StartDiscussion.id);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFf5f5f5),
          selectedItemColor: Colors.grey[700],
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'feed');
                },
                child: Icon(
                  Icons.rss_feed,
                  size: 30,
                ),
              ),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.device_hub,
                size: 30,
              ),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.event_available,
                size: 30,
              ),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group_work,
                size: 30,
              ),
              title: SizedBox(),
            ),
          ],
        ),
        appBar: buildAppBar(),
        backgroundColor: Color(0xffffffff),
        body: Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TabBarView(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            GroupCard(
                              postImage: AssetImage('images/detail_card.jpg'),
                              postHeading: 'Volleyball for All',
                              bottomSheet: _bottomSheetUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(context, DiscussionList.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(context, MemberListing.id);
                              },
                            ),
                            GroupCard(
                              postImage: AssetImage('images/detail_card.jpg'),
                              postHeading:
                                  '2019 Holiday 4\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(context, DiscussionList.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(context, MemberListing.id);
                              },
                            ),
                            GroupCard(
                              postImage: AssetImage('images/detail_card.jpg'),
                              postHeading:
                                  '2019 Holiday 4\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(context, DiscussionList.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(context, MemberListing.id);
                              },
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            GroupCard(
                              postImage: AssetImage('images/detail_card.jpg'),
                              postHeading:
                                  '2019 Holiday 4\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(context, DiscussionList.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(context, MemberListing.id);
                              },
                            ),
                            GroupCard(
                              postImage: AssetImage('images/center_card.jpg'),
                              postHeading:
                                  '2020 Holiday 1\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetNonUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(
                                    context, GroupDetailNonUserPost.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(
                                    context, MemberListingNonUserPost.id);
                              },
                            ),
                            GroupCard(
                              postImage: AssetImage('images/detail_card.jpg'),
                              postHeading:
                                  '2019 Holiday 4\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(context, DiscussionList.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(context, MemberListing.id);
                              },
                            ),
                            GroupCard(
                              postImage: AssetImage('images/center_card.jpg'),
                              postHeading:
                                  '2020 Holiday 1\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetNonUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(
                                    context, GroupDetailNonUserPost.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(
                                    context, MemberListingNonUserPost.id);
                              },
                            ),
                            GroupCard(
                              postImage: AssetImage('images/detail_card.jpg'),
                              postHeading:
                                  '2019 Holiday 4\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(context, DiscussionList.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(context, MemberListing.id);
                              },
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            GroupCard(
                              postImage: AssetImage('images/center_card.jpg'),
                              postHeading:
                                  '2020 Holiday 1\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetNonUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(
                                    context, GroupDetailNonUserPost.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(
                                    context, MemberListingNonUserPost.id);
                              },
                            ),
                            GroupCard(
                              postImage: AssetImage('images/center_card.jpg'),
                              postHeading:
                                  '2020 Holiday 1\'s Beach Volleyball Tournament.',
                              bottomSheet: _bottomSheetNonUserPost,
                              onPressedGroup: () {
                                Navigator.pushNamed(
                                    context, GroupDetailNonUserPost.id);
                              },
                              onPressedMember: () {
                                Navigator.pushNamed(
                                    context, MemberListingNonUserPost.id);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
