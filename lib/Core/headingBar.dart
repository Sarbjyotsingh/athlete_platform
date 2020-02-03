import 'package:flutter/material.dart';
import 'package:athlete_platform/Core/values.dart';

class headingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(left: 0, bottom: 10, top: 10),
              child: Material(
                color: Color(0xffffffff),
                child: Text(
                  "Event",
                  style: TextStyle(
                      color: Color(0xff555555),
                      fontSize: values.headingSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: RaisedButton(
                child: Text(
                  "Create",
                  style: TextStyle(
                    color: values.headingButtonColor,
                    fontSize: values.headingButtonSize,
                    fontFamily: values.headingFontFamily,
                  ),
                ),
                color: values.headingButtonBackColor,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(values.headingButtonCornerRadius),
                  side: BorderSide(
                    color: values.headingButtonBorderColor,
                    width: 1.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "createEvent");
                },
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "createEvent");
            },
          )
        ],
      ),
    );
  }
}
