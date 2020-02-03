import 'package:athlete_platform/widgets/button_with_leading_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReplyCommentWidget extends StatelessWidget {
  final String userName;
  final String userDescription;
  final String userComment;
  final ImageProvider userImage;
  ReplyCommentWidget({
    @required this.userDescription,
    @required this.userName,
    @required this.userImage,
    @required this.userComment,
  });
  @override
  Widget build(BuildContext context) {
    void _bottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 140,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('Edit'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListTile(
                      leading: Icon(Icons.delete),
                      title: Text('Delete'),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Container(
      padding: EdgeInsets.only(right: 10, bottom: 10),
      color: Color(0xFFF5F5F5),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: userImage,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userName,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          userDescription,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Muli',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: _bottomSheet,
                child: Icon(
                  Icons.more_vert,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 0,
              ),
              Column(
                children: <Widget>[
                  Text(
                    userComment,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontFamily: 'Muli',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 0,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonWithLeadingIcon(
                text: 'Like',
                leadingIcon: FontAwesomeIcons.heart,
                onTapIconColor: Colors.red,
                onTapIconChange: FontAwesomeIcons.solidHeart,
              ),
              SizedBox(
                width: 20,
              ),
              ButtonWithLeadingIcon(
                text: 'Reply',
                leadingIcon: FontAwesomeIcons.comment,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
