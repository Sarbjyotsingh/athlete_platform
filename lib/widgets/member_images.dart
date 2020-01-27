import 'package:athlete_platform/utilities/constant.dart';
import 'package:flutter/material.dart';

class MemberImages extends StatelessWidget {
  const MemberImages({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      height: 48.0,
      width: 160.0,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.shade800,
                width: 1,
              ),
            ),
            child: CircleAvatar(
              radius: kMemberImageRadius,
              backgroundImage: AssetImage(
                'images/person2.jpg',
              ),
            ),
          ),
          Positioned(
            left: 25.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.shade800,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                radius: kMemberImageRadius,
                backgroundImage: AssetImage(
                  'images/person1.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            left: 50.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.shade800,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                radius: kMemberImageRadius,
                backgroundImage: AssetImage(
                  'images/person2.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            left: 75.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.shade800,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                radius: kMemberImageRadius,
                backgroundImage: AssetImage(
                  'images/person1.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            left: 100.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.shade800,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                radius: kMemberImageRadius,
                backgroundImage: AssetImage(
                  'images/person2.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            left: 125.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.7).withOpacity(1),
                border: Border.all(
                  color: Colors.grey.shade800,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                radius: kMemberImageRadius,
                backgroundImage: AssetImage(
                  'images/person1.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            left: 127.0,
            top: 8,
            child: Text(
              '+56',
              style: TextStyle(
                fontFamily: 'Muli',
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
