import 'package:athlete_platform/screens/group_listing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _BottomBar();
  }
}

class _BottomBar extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFf5f5f5),
      selectedItemColor: Colors.grey[700],
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {},
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
          icon: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, GroupListing.id);
            },
            child: Icon(
              Icons.group_work,
              size: 30,
            ),
          ),
          title: SizedBox(),
        ),
      ],
    );
  }
}
