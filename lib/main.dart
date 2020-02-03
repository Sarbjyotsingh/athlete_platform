import 'package:athlete_platform/screens/FeedPage.dart';
import 'package:athlete_platform/screens/SignupFifth.dart';
import 'package:athlete_platform/screens/SignupSixth.dart';
import 'package:athlete_platform/screens/connection_listing.dart';
import 'package:athlete_platform/screens/create_group.dart';
import 'package:athlete_platform/screens/discussion_detail.dart';
import 'package:athlete_platform/screens/discussion_detail_non_user_post.dart';
import 'package:athlete_platform/screens/discussion_list.dart';
import 'package:athlete_platform/screens/discussion_list_non_user_post.dart';
import 'package:athlete_platform/screens/edit_group.dart';
import 'package:athlete_platform/screens/group_detail_non_user_post.dart';
import 'package:athlete_platform/screens/group_details.dart';
import 'package:athlete_platform/screens/group_listing.dart';
import 'package:athlete_platform/screens/invite_member.dart';
import 'package:athlete_platform/screens/member_listing.dart';
import 'package:athlete_platform/screens/member_listing_non_user_post.dart';
import 'package:athlete_platform/screens/menu_bar.dart';
import 'package:athlete_platform/screens/post.dart';
import 'package:athlete_platform/screens/search_page.dart';
import 'package:athlete_platform/screens/signin.dart';
import 'package:athlete_platform/screens/signup.dart';
import 'package:athlete_platform/screens/signupforth.dart';
import 'package:athlete_platform/screens/signupsecond.dart';
import 'package:athlete_platform/screens/signupthird.dart';
import 'package:athlete_platform/screens/splash.dart';
import 'package:athlete_platform/screens/start_discussion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'CreateEvent/createEvent.dart';
import 'EventDetails/eventDetails.dart';
import 'editEvent/editEvent.dart';
import 'eventLIsitng/eventListing.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        MenuBar.id: (context) => MenuBar(),
        GroupListing.id: (context) => GroupListing(),
        GroupDetails.id: (context) => GroupDetails(),
        CreateGroup.id: (context) => CreateGroup(),
        EditGroup.id: (context) => EditGroup(),
        MemberListing.id: (context) => MemberListing(),
        InviteMember.id: (context) => InviteMember(),
        SplashScreen.id: (context) => SplashScreen(),
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp(),
        SignUpSecond.id: (context) => SignUpSecond(),
        SignUpThird.id: (context) => SignUpThird(),
        SignUpForth.id: (context) => SignUpForth(),
        SignUpFifth.id: (context) => SignUpFifth(),
        DiscussionList.id: (context) => DiscussionList(),
        DiscussionDetail.id: (context) => DiscussionDetail(),
        Post.id: (context) => Post(),
        "feed": (context) => FeedPage(),
        "events": (context) => EventListing(),
        "createEvent": (context) => createEvent(),
        "editEvent": (context) => editEvent(),
        "eventDetails": (context) => eventDetails(),
        SignUpSixth.id: (context) => SignUpSixth(),
        StartDiscussion.id: (context) => StartDiscussion(),
        MemberListingNonUserPost.id: (context) => MemberListingNonUserPost(),
        GroupDetailNonUserPost.id: (context) => GroupDetailNonUserPost(),
        DiscussionListNonUserPost.id: (context) => DiscussionListNonUserPost(),
        DiscussionDetailsNonUserPost.id: (context) =>
            DiscussionDetailsNonUserPost(),
        ConnectionListing.id: (context) => ConnectionListing(),
        SearchPage.id: (context) => SearchPage(),
      },
    );
  }
}
