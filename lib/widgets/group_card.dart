import 'package:athlete_platform/screens/edit_group.dart';
import 'package:athlete_platform/screens/group_details.dart';
import 'package:athlete_platform/screens/member_listing.dart';
import 'package:athlete_platform/widgets/member_images.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    Key key,
  }) : super(key: key);

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
                    Navigator.pushNamed(context, EditGroup.id);
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
            onTap: () {
              Navigator.pushNamed(context, GroupDetails.id);
            },
            child: Container(
              height: 150,
              width: double.infinity,
              constraints: BoxConstraints.tightFor(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/center_card.jpg'),
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
                  onPressed: _bottomSheet,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, GroupDetails.id);
            },
            child: Text(
              '2019 Holiday 4\'s Beach Volleyball Tournament.',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
                color: Color(0xFF555555),
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
                    onTap: () {
                      Navigator.pushNamed(context, MemberListing.id);
                    },
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
                    onPressed: () {
                      Navigator.pushNamed(context, MemberListing.id);
                    },
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
