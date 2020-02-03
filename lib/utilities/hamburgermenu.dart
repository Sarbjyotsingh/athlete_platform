import 'package:athlete_platform/Core/values.dart';
import 'package:athlete_platform/screens/connection_listing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class hamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: values.menuBackGroundColor,
      ),
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 5),
                child: RaisedButton(
                  elevation: 0,
                  color: values.menuBackGroundColor,
                  onPressed: () {},
                  child: ImageIcon(
                    AssetImage("images/cancel.png"),
                    color: values.menuCloseButtonColor,
                    size: values.menuCloseButtonSize,
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage(values.avatarPic),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: values.userImageBorderColor,
                          width: 1.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "John Deo",
                        style: TextStyle(
                            fontFamily: values.menuFontFamily,
                            fontWeight: values.menuUserNameFontWeight,
                            color: values.menuUserNameColor,
                            fontSize: values.menuUserNameFontSize),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "Instructor,Coach, Consultant",
                        style: TextStyle(
                          fontWeight: values.menuFontWeight,
                          fontFamily: values.menuFontFamily,
                          color: values.menuUserNameColor,
                          fontSize: values.menuUserNameFontSize - 6,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.map,
                            color: Colors.white,
                            size: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Alberto,British Columbia",
                              style: TextStyle(
                                fontWeight: values.menuFontWeight,
                                fontFamily: values.menuFontFamily,
                                color: values.menuUserNameColor,
                                fontSize: values.menuUserNameFontSize - 8,
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
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      alignment: Alignment.centerLeft,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "feed");
                        },
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Feed",
                          style: TextStyle(
                              color: values.menuUserNameColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Blog",
                          style: TextStyle(
                              color: values.menuUserNameColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Event",
                          style: TextStyle(
                              color: values.menuUserNameColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "group_listing");
                        },
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Group",
                          style: TextStyle(
                              color: values.menuUserNameColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Virtual Bench",
                          style: TextStyle(
                              color: values.virtualBenchMenuOptionColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: values.premiumMenuOptionColor))),
                          child: Text(
                            "Premium",
                            style: TextStyle(
                                color: values.premiumMenuOptionColor,
                                fontSize: values.menuUserNameFontSize - 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ConnectionListing.id);
                        },
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Connections",
                          style: TextStyle(
                              color: values.menuUserNameColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Setting",
                          style: TextStyle(
                              color: values.menuUserNameColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        color: values.menuBackGroundColor,
                        elevation: 0,
                        child: Text(
                          "Signout",
                          style: TextStyle(
                              color: values.menuUserNameColor,
                              fontSize: values.menuUserNameFontSize - 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                alignment: Alignment.center,
                child: Text(
                  "Version 2.0.1",
                  style: TextStyle(
                    color: values.menuUserNameColor,
                    fontSize: values.menuUserNameFontSize - 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
