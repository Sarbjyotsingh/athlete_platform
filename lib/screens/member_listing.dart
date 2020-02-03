import 'package:athlete_platform/screens/invite_member.dart';
import 'package:athlete_platform/widgets/ButtonWithUnderline.dart';
import 'package:athlete_platform/widgets/memeber_detail_card.dart';
import 'package:flutter/material.dart';

class MemberListing extends StatefulWidget {
  static const String id = 'member_listing';
  @override
  _MemberListingState createState() => _MemberListingState();
}

class _MemberListingState extends State<MemberListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.keyboard_backspace,
                color: Colors.black,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Member',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: <Widget>[
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Dan Walker (Admin)',
                  subtitle: 'Coach',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Lana Henrikssen',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nelly Schwartz',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Azzouz El Paytoun',
                  subtitle: 'Athelete @ university of calgary',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nikos Markopoulos',
                  subtitle: 'Coach',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Lana Henrikssen',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nelly Schwartz',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Azzouz El Paytoun',
                  subtitle: 'Athelete @ university of calgary',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nikos Markopoulos',
                  subtitle: 'Coach',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Lana Henrikssen',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nelly Schwartz',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Azzouz El Paytoun',
                  subtitle: 'Athelete @ university of calgary',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nikos Markopoulos',
                  subtitle: 'Coach',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Lana Henrikssen',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nelly Schwartz',
                  subtitle: 'Athelete',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person2.jpg',
                  ),
                  title: 'Azzouz El Paytoun',
                  subtitle: 'Athelete @ university of calgary',
                ),
                MemberDetailCard(
                  backgroundImage: AssetImage(
                    'images/person1.jpg',
                  ),
                  title: 'Nikos Markopoulos',
                  subtitle: 'Coach',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
