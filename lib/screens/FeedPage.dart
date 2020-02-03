import 'package:athlete_platform/screens/group_listing.dart';
import 'package:athlete_platform/screens/post.dart';
import 'package:athlete_platform/utilities/bottomBar.dart';
import 'package:athlete_platform/utilities/hamburgermenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget buildBottomAppBar() {
    return BottomAppBar(
      child: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Icon(FontAwesomeIcons.wifi),
            ),
            Icon(FontAwesomeIcons.chartPie),
            Icon(FontAwesomeIcons.calendarCheck),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, GroupListing.id);
              },
              child: Icon(FontAwesomeIcons.ggCircle),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Container(
        height: 40,
//        margin: EdgeInsets.only(top: 18),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,

          decoration: new InputDecoration(
//              contentPadding: const EdgeInsets.only(25.0),
              contentPadding: EdgeInsets.only(top: 10, bottom: 15, left: 15, ),
              border: new OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(
                  const Radius.circular(21.0),
                ),
              ),
              filled: true,
              hintText: 'Search',
              hintStyle: TextStyle(fontFamily: 'Muli'),
              alignLabelWithHint: true,
              fillColor: Colors.grey[100]),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black), // set your color here
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        },
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
        )
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: AppBar(
        title: Text(
          'Feed',
          style: TextStyle(
              fontFamily: 'Muli',
              fontWeight: FontWeight.w800,
              fontSize: 40,
              color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }

  Widget buildNameLine(String name, String date, String photo) {
    return new Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(photo),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Muli',
                            color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
            Icon(Icons.more_vert)
          ],
        ));
  }

  Widget buildTextPost(String s) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        s,
        style: TextStyle(fontSize: 16, fontFamily: 'Muli'),
      ),
    );
  }

  Widget buildImagePost(String s) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Container(
          width: MediaQuery.of(context).size.width, child: Image.asset(s)),
    );
  }

  Widget buildTile() {
    return Padding(
      padding: EdgeInsets.only(top: 21),
      child: Container(
        color: Color(0xfffbfbfb),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildNameLine('Jeremy Bridge', '2d', 'assets/images/potrait1.jpg'),
            buildTextPost(
                'If I look at all the things about volleyball. I really miss 8th Grade Volleyball. Every player should always play it.'),
            buildImagePost('assets/images/volleyball.jpg'),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.heart,
                            size: 15,
                          )),
                      Text(
                        'Like',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.comment,
                            size: 15,
                          )),
                      Text(
                        'Comment',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.shareAlt,
                            size: 15,
                          )),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildPhotoCollage() {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        addRepaintBoundaries: true,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Image.asset('assets/images/volleyball.jpg'),
          Image.asset('assets/images/sample2.jpg'),
          Image.asset(
            'assets/images/volleyball2.jpg',
          ),
          Image.asset('assets/images/volleyball.jpg'),
        ],
      ),
    );
  }

  Widget buildVideoPost() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: <Widget>[
            Image.asset(
              'assets/images/volleyball2.jpg',
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.5),
            ),
            IconButton(
              icon: Icon(
                Icons.play_circle_filled,
                size: 80,
                color: Color(0xffD93032),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget buildTile2() {
    return Padding(
      padding: EdgeInsets.only(top: 21),
      child: Container(
        color: Color(0xfffbfbfb),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildNameLine(
                'Stello Bengmann', '3d', 'assets/images/potrait2.jpg'),
            buildTextPost('Had a wonderful time '),
            buildPhotoCollage(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.heart,
                            size: 15,
                          )),
                      Text(
                        'Like',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.comment,
                            size: 15,
                          )),
                      Text(
                        'Comment',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.shareAlt,
                            size: 15,
                          )),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTile3() {
    return Padding(
      padding: EdgeInsets.only(top: 21, bottom: 21),
      child: Container(
        color: Color(0xfffbfbfb),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildNameLine(
                'Stello Bengmann', '3d', 'assets/images/potrait2.jpg'),
            buildTextPost(
                'We played brilliantly and won with a lead of 26 points.'),
            buildVideoPost(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.heart,
                            size: 15,
                          )),
                      Text(
                        'Like',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.comment,
                            size: 15,
                          )),
                      Text(
                        'Comment',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.shareAlt,
                            size: 15,
                          )),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
      child: ListView(
        children: <Widget>[
          buildTile(),
          buildTile2(),
          buildTile3(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Post.id);
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add_circle_outline,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
      appBar: buildAppBar(),
      body: buildBody(),
      drawer: hamburgerMenu(),
    );
  }
}
