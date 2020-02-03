import 'package:athlete_platform/Core/headingBar.dart';
import 'package:athlete_platform/Core/values.dart';
import 'package:athlete_platform/utilities/bottomBar.dart';
import 'package:athlete_platform/utilities/hamburgermenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../todayTab.dart';

class EventListing extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _EventListing();
  }
}

class _EventListing extends State<EventListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: Scaffold(
              body: TabBarView(
                children: <Widget>[
                  todayTab(),
                  todayTab(),
                  todayTab(),
                ],
              ),
              backgroundColor: values.mainBackColor,
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                title: headingBar(),
                elevation: 0,
                backgroundColor: values.mainBackColor,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(70),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 30),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: values.tabLabelColor,
                          labelPadding: EdgeInsets.only(left: 0, right: 0),
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 2,
                              color: values.tabIndicatorColor,
                            ),
                          ),
                          tabs: <Widget>[
                            Container(
                              width: 60,
                              child: Tab(
                                child: Text(
                                  "Today's",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Muli",
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              child: Tab(
                                child: Text(
                                  "Upcoming",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Muli",
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              child: Tab(
                                child: Text(
                                  "Past",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Muli",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              drawer: hamburgerMenu(),
              bottomNavigationBar: BottomBar())),
    );
  }
}
