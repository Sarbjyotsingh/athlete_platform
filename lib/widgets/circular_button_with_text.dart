import 'package:flutter/material.dart';

class CircularButtonWithText extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  CircularButtonWithText({
    @required this.text,
    @required this.onPressed,
    @required this.borderColor,
    @required this.buttonColor,
    @required this.textColor,
    @required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: buttonColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(100),
          right: Radius.circular(100),
        ),
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: FlatButton(
        child: Text(
          text,
          style: textStyle,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textColor: textColor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: onPressed,
      ),
    );
  }
}
