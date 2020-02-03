import 'package:athlete_platform/widgets/member_images.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final ImageProvider postImage;
  final String postHeading;
  final dynamic bottomSheet;
  final VoidCallback onPressedGroup;
  final VoidCallback onPressedMember;
  GroupCard({
    @required this.postImage,
    @required this.postHeading,
    @required this.bottomSheet,
    @required this.onPressedGroup,
    @required this.onPressedMember,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: onPressedGroup,
            child: Container(
              height: 150,
              width: double.infinity,
              constraints: BoxConstraints.tightFor(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: postImage,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF333333).withOpacity(0.5),
                    ),
                    child: Icon(
                      Icons.more_vert,
                      color: Color(0xFFe1e1e1),
                    ),
                  ),
                  onPressed: bottomSheet,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: onPressedGroup,
              child: Text(
                postHeading,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF555555),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: onPressedMember,
                    child: MemberImages(),
                  ),
                  FlatButton(
                    child: Text(
                      'Members',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF555555),
                      ),
                    ),
                    textColor: Color(0xFF555555),
                    onPressed: onPressedMember,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
