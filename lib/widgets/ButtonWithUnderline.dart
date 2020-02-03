import 'package:flutter/material.dart';

class ButtonWithUnderline extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color underLineColor;

  ButtonWithUnderline({
    @required this.textColor,
    @required this.underLineColor,
    @required this.onPressed,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2,
              color: underLineColor,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'Muli',
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onPressed,
    );
  }
}
