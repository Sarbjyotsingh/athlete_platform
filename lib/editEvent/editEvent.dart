import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:athlete_platform/Core/values.dart';

class editEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Event",
            style: TextStyle(
              fontFamily: values.screenHeadingFontFamily,
              fontSize: values.screenHeadingSize,
              color: values.ScreenHeadingColor,
            ),
          ),
          elevation: 0,
          backgroundColor: values.mainBackColor,
        ),
        backgroundColor: values.mainBackColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage("images/drive.png"),
                  width: values.imageWidth,
                  height: values.imageHeigth,
                  color: Colors.grey),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Event Name",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textFieldHeight,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    hintStyle: new TextStyle(
                      color: values.textHintColor,
                      fontSize: values.hintFontSize,
                    ),
                    hintText: "Ex. pratice of vollyball",
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        width: 150,
                        child: Text(
                          "From",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 160,
                            height: values.textFieldHeight,
                            margin: EdgeInsets.all(10),
                            child: TextField(
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(30.0),
                                  ),
                                ),
                                hintStyle: new TextStyle(
                                  color: values.textHintColor,
                                  fontSize: values.hintFontSize,
                                ),
                                hintText: "DD/MM/YY",
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 11,
                            right: -10,
                            child: RaisedButton(
                              elevation: 0,
                              color: Colors.transparent,
                              child: ImageIcon(
                                AssetImage("images/date_cal.png"),
                                size: 25,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        width: 160,
                        child: Text(
                          "To",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 150,
                            height: values.textFieldHeight,
                            margin: EdgeInsets.all(10),
                            child: TextField(
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(30.0),
                                  ),
                                ),
                                hintStyle: new TextStyle(
                                  color: values.textHintColor,
                                  fontSize: values.hintFontSize,
                                ),
                                hintText: "DD/MM/YY",
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 11,
                            right: -10,
                            child: RaisedButton(
                              elevation: 0,
                              color: Colors.transparent,
                              child: ImageIcon(
                                AssetImage("images/date_cal.png"),
                                size: 25,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Location",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textFieldHeight,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    hintStyle: new TextStyle(
                      color: values.textHintColor,
                      fontSize: values.hintFontSize,
                    ),
                    hintText: "Ex. Canada",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Event Type",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textFieldHeight,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    hintStyle: new TextStyle(
                      color: values.textHintColor,
                      fontSize: values.hintFontSize,
                    ),
                    hintText: "Ex. Pratice, Physical training, tournament",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Description",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textAreaHeight,
                margin: EdgeInsets.all(10),
                child: TextField(
                  maxLines: 50,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    hintStyle: new TextStyle(
                      color: values.textHintColor,
                      fontSize: values.hintFontSize,
                    ),
                    hintText: "Add Description",
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: ImageIcon(
                      AssetImage("images/circle_add.png"),
                      size: 25,
                      color: values.inviteMemberColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Invite member",
                      style: TextStyle(
                        color: values.inviteMemberColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 20, right: 10, bottom: 10),
                    child: RaisedButton(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: "Muli",
                        ),
                      ),
                      color: Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 20, right: 10, bottom: 10),
                    child: RaisedButton(
                      child: Text(
                        "Save",
                        style: TextStyle(
                          color: values.saveButtonFontColor,
                          fontSize: 18,
                          fontFamily: "Muli",
                        ),
                      ),
                      color: values.saveButtonBAckColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: values.saveButtonBAckColor,
                          width: 1.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
