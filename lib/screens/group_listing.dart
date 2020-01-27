import 'package:athlete_platform/screens/create_group.dart';
import 'package:athlete_platform/widgets/group_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GroupListing extends StatefulWidget {
  static const id = 'group_listing';
  @override
  _GroupListingState createState() => _GroupListingState();
}

class _GroupListingState extends State<GroupListing> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(
            Icons.add_circle_outline,
            size: 35,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFf5f5f5),
          selectedItemColor: Colors.grey[700],
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.rss_feed,
                size: 30,
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Group',
            style: TextStyle(
              color: Color(0xFF555555),
              fontSize: 40,
              fontWeight: FontWeight.w900,
              fontFamily: 'Muli',
            ),
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(100),
                  right: Radius.circular(100),
                ),
                border: Border.all(
                  color: Color(0xFFf01b01),
                  width: 1.0,
                ),
              ),
              child: FlatButton(
                child: Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Muli',
                  ),
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                textColor: Color(0xFFf01b01),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, CreateGroup.id);
                },
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Color(0xFF555555),
            labelStyle: TextStyle(
              fontFamily: 'Muli',
              fontSize: 16,
            ),
            indicatorColor: Color(0xFFf01b01),
            tabs: [
              Tab(
                text: 'Created by me',
              ),
              Tab(
                text: 'All Groups',
              ),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TabBarView(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            GroupCard(),
                            GroupCard(),
                            GroupCard(),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            GroupCard(),
                            GroupCard(),
                            GroupCard(),
                            GroupCard(),
                            GroupCard(),
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
