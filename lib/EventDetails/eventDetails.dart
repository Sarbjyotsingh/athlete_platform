import 'package:athlete_platform/Core/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class eventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/eventPic.jpg",
                    ),
                    Positioned(
                      top: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                color: values.statusBackColor,
                                border:
                                    Border.all(color: values.statusBackColor),
                                borderRadius: BorderRadius.circular(
                                    values.statusCornerRadius)),
                            margin: EdgeInsets.only(left: 10, top: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: ImageIcon(
                                    AssetImage("images/cancel.png"),
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Not Attending",
                                    style: TextStyle(
                                      color: values.postStatusTextColor,
                                      fontSize: values.postStatusTextSize,
                                      fontFamily: values.postStatusFontFamily,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            margin: EdgeInsets.only(left: 140),
                            child: FloatingActionButton(
                              elevation: 0,
                              onPressed: () {
                                _settingModalBottomSheet(context);
                              },
                              mini: true,
                              backgroundColor: values.threeDotBackColor,
                              child: ImageIcon(
                                AssetImage("images/dots.png"),
                                size: values.threeDotSize,
                                color: values.threeDotsColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(values.dateContainerRadius),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 2, bottom: 5, right: 3),
                        width: 65,
                        height: 65,
                        color: values.statusBackColor,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "13",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: values.dateTextColor),
                            ),
                            Text(
                              "Dec,2019",
                              style: TextStyle(color: values.dateTextColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "2019 Holiday 4's Beach Volleyball Tournament",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: values.eventHeadingFontSize,
                      color: values.eventHeadingFontColor,
                      wordSpacing: 2.5),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        values.avatarPic,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 250,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Dan Walker (Host)",
                              style: TextStyle(
                                color: values.eventCreaterNameColor,
                                fontSize: values.eventCreaterNameFontSize,
                              ),
                            ),
                          ),
                          Container(
                            width: 250,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Coach, Consulant(University of Calgary)",
                              style: TextStyle(
                                color: values.eventCreaterDesignationColor,
                                fontSize: values.eventCreaterNameFontSize - 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Lorem Ipsum is simply dummy "
                        "text of the printing and typesetting industry. "
                        "Lorem Ipsum has been the industry's standard dummy text "
                        "ever since the 1500s, when an unknown printer took a galley "
                        "of type and scrambled it to make world",
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                    Positioned(
                      right: 80,
                      bottom: 0,
                      child: Text(
                        "View More",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: values.viewMoreTextColor,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: values.dateDirectionIconBackColor,
                    ),
                    margin: EdgeInsets.only(left: 10),
                    child: ImageIcon(
                      AssetImage(values.dateIcon),
                      size: values.dateIconSize,
                      color: values.threeDotsColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("Dec 13, 2019 to Dec 15,2019"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: values.dateDirectionIconBackColor,
                    ),
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: ImageIcon(
                      AssetImage(values.navIcon),
                      size: values.dateIconSize,
                      color: values.threeDotsColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Dallas Market Center, Dallas, USA",
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Get Directions",
                      style: TextStyle(
                          color: values.getDirectionsTextColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Card(
                elevation: 0,
                color: values.commentCardBack,
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              values.avatarPic,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 230,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Me",
                                    style: TextStyle(
                                      color: values.eventCreaterNameColor,
                                      fontSize: values.eventCreaterNameFontSize,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Coach, Consulant(University of Calgary)",
                                    style: TextStyle(
                                      color:
                                          values.eventCreaterDesignationColor,
                                      fontSize:
                                          values.eventCreaterNameFontSize - 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            margin: EdgeInsets.only(left: 140),
                            child: FloatingActionButton(
                              elevation: 0,
                              onPressed: () {
                                _settingModalBottomSheet(context);
                              },
                              mini: true,
                              backgroundColor: values.threeDotBackColor,
                              child: ImageIcon(
                                AssetImage("images/dots.png"),
                                size: values.threeDotSize,
                                color: values.threeDotsColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                          hintText: "Enter your comment here ...",
                          hintStyle: TextStyle(color: Colors.black54),
                        ),
                        maxLines: 35,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: values.postCommentButtonColor,
                        child: Text(
                          "POST",
                          style: TextStyle(color: Colors.white),
                        ),
                        elevation: 0,
                        onPressed: () {},
                        padding: EdgeInsets.all(5),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        "Comments",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  values.avatarPic,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 230,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Me",
                                        style: TextStyle(
                                          color: values.eventCreaterNameColor,
                                          fontSize:
                                              values.eventCreaterNameFontSize,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Coach, Consulant(University of Calgary)",
                                        style: TextStyle(
                                          color: values
                                              .eventCreaterDesignationColor,
                                          fontSize:
                                              values.eventCreaterNameFontSize -
                                                  2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                margin: EdgeInsets.only(left: 140),
                                child: FloatingActionButton(
                                  elevation: 0,
                                  onPressed: () {
                                    _settingModalBottomSheet(context);
                                  },
                                  mini: true,
                                  backgroundColor: values.threeDotBackColor,
                                  child: ImageIcon(
                                    AssetImage("images/dots.png"),
                                    size: values.threeDotSize,
                                    color: values.threeDotsColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text("Lorem Ipsum is simply dummy "
                              "text of the printing and typesetting industry. "),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 30,
                          width: double.infinity,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 60,
                                child: Icon(
                                  values.likeImageIcon,
                                  color: values.likeCommentColor,
                                ),
                              ),
                              Positioned(
                                left: 90,
                                bottom: 10,
                                child: Container(
                                  child: Text(
                                    "Like",
                                    style: TextStyle(
                                        color: values.likeCommentColor),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 160,
                                child: ImageIcon(
                                  AssetImage(values.CommentimageIcon),
                                  color: values.likeCommentColor,
                                ),
                              ),
                              Positioned(
                                left: 190,
                                bottom: 8,
                                child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Comment",
                                    style: TextStyle(
                                        color: values.likeCommentColor,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    values.avatarPic,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 200,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Me",
                                          style: TextStyle(
                                            color: values.eventCreaterNameColor,
                                            fontSize:
                                                values.eventCreaterNameFontSize,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 200,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Coach (University of Calgary)",
                                          style: TextStyle(
                                            color: values
                                                .eventCreaterDesignationColor,
                                            fontSize: values
                                                    .eventCreaterNameFontSize -
                                                3,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  margin: EdgeInsets.only(left: 140),
                                  child: FloatingActionButton(
                                    elevation: 0,
                                    onPressed: () {
                                      _settingModalBottomSheet(context);
                                    },
                                    mini: true,
                                    backgroundColor: values.threeDotBackColor,
                                    child: ImageIcon(
                                      AssetImage("images/dots.png"),
                                      size: values.threeDotSize,
                                      color: values.threeDotsColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Text("Lorem Ipsum is simply dummy "
                                "text of the printing and typesetting industry. "),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 30,
                            width: double.infinity,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 60,
                                  child: Icon(
                                    values.likeImageIcon,
                                    color: values.likeCommentColor,
                                  ),
                                ),
                                Positioned(
                                  left: 90,
                                  bottom: 10,
                                  child: Container(
                                    child: Text(
                                      "Like",
                                      style: TextStyle(
                                        color: values.likeCommentColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 160,
                                  child: ImageIcon(
                                    AssetImage(values.CommentimageIcon),
                                    color: values.likeCommentColor,
                                  ),
                                ),
                                Positioned(
                                  left: 190,
                                  bottom: 10,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "Comment",
                                      style: TextStyle(
                                        color: values.likeCommentColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: values.eventdetailbackgroundColor,
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.edit),
                    title: new Text('Edit'),
                    onTap: () {}),
                new ListTile(
                  leading: new Icon(Icons.delete),
                  title: new Text('Delete'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }
}
