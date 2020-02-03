import 'package:flutter/material.dart';

class ButtonWithLeadingIcon extends StatefulWidget {
  final IconData leadingIcon;
  final String text;
  final Color onTapIconColor;
  final IconData onTapIconChange;
  ButtonWithLeadingIcon({
    @required this.leadingIcon,
    @required this.text,
    this.onTapIconColor,
    this.onTapIconChange,
  });
  @override
  _ButtonWithLeadingIconState createState() => _ButtonWithLeadingIconState();
}

class _ButtonWithLeadingIconState extends State<ButtonWithLeadingIcon> {
  Color _colors = Colors.grey.shade700;
  double _iconSize = 18;
  IconData _iconData;

  @override
  Widget build(BuildContext context) {
    _iconData = widget.leadingIcon;

    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.onTapIconColor == _colors) {
            _colors = Colors.grey.shade700;
            _iconSize = 18;
            _iconData = widget.onTapIconChange;
          } else if (widget.onTapIconColor != null) {
            _iconData = widget.onTapIconChange;
            _colors = widget.onTapIconColor;
            _iconSize = 20;
          }
        });
      },
      child: Container(
        height: 15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              _iconData,
              size: _iconSize,
              color: _colors,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Muli',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
