import 'package:flutter/material.dart';

class MemberDetailCard extends StatelessWidget {
  final ImageProvider backgroundImage;
  final String title;
  final String subtitle;

  MemberDetailCard({
    @required this.title,
    @required this.subtitle,
    @required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
          radius: 21,
          backgroundImage: backgroundImage,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Muli',
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
