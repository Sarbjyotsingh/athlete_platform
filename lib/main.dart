import 'package:athlete_platform/screens/create_group.dart';
import 'package:athlete_platform/screens/discussion_detail.dart';
import 'package:athlete_platform/screens/discussion_list.dart';
import 'package:athlete_platform/screens/edit_group.dart';
import 'package:athlete_platform/screens/group_details.dart';
import 'package:athlete_platform/screens/group_listing.dart';
import 'package:athlete_platform/screens/invite_member.dart';
import 'package:athlete_platform/screens/member_listing.dart';
import 'package:athlete_platform/screens/menu_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MenuBar.id,
      routes: {
        MenuBar.id: (context) => MenuBar(),
        GroupListing.id: (context) => GroupListing(),
        GroupDetails.id: (context) => GroupDetails(),
        CreateGroup.id: (context) => CreateGroup(),
        EditGroup.id: (context) => EditGroup(),
        MemberListing.id: (context) => MemberListing(),
        InviteMember.id: (context) => InviteMember(),
        DiscussionList.id: (context) => DiscussionList(),
        DiscussionDetail.id: (context) => DiscussionDetail(),
      },
    );
  }
}
