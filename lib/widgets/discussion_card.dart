import 'package:athlete_platform/widgets/button_with_leading_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DiscussionCard extends StatelessWidget {
  final ImageProvider userImage;
  final String userName;
  final String userDescription;
  final String discussionTitle;
  final String discussionDescription;
  final VoidCallback onPressed;
  DiscussionCard({
    @required this.onPressed,
    @required this.discussionDescription,
    @required this.discussionTitle,
    @required this.userDescription,
    @required this.userName,
    @required this.userImage,
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
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(right: 5, top: 0, bottom: 10, left: 5),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(0),
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.shade800,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: userImage,
              ),
            ),
            title: Text(
              userName,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              userDescription,
              style: TextStyle(
                fontFamily: 'Muli',
                fontSize: 12,
              ),
            ),
            trailing: GestureDetector(
              onTap: _bottomSheet,
              child: Icon(Icons.more_vert),
            ),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    discussionTitle,
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    discussionDescription,
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonWithLeadingIcon(
                text: 'Like',
                leadingIcon: FontAwesomeIcons.heart,
                onTapIconColor: Colors.red,
              ),
              SizedBox(
                width: 20,
              ),
              ButtonWithLeadingIcon(
                text: 'Comment',
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
