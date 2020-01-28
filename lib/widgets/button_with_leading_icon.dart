import 'package:flutter/material.dart';

class ButtonWithLeadingIcon extends StatelessWidget {
  final IconData leadingIcon;
  final String text;
  ButtonWithLeadingIcon({
    @required this.leadingIcon,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            leadingIcon,
            size: 18,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Muli',
            ),
          ),
        ],
      ),
    );
  }
}
