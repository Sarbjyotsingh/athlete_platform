import 'package:flutter/material.dart';

class CircularRaisedButtonWithText extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final EdgeInsetsGeometry padding;
  CircularRaisedButtonWithText({
    @required this.text,
    @required this.onPressed,
    @required this.borderColor,
    @required this.buttonColor,
    @required this.textColor,
    @required this.textStyle,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 10,
      color: buttonColor,
      child: Text(
        text,
        style: textStyle,
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textColor: textColor,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(100),
        side: BorderSide(
          color: borderColor,
          width: 1.0,
        ),
      ),
      padding: padding ?? EdgeInsets.all(0),
    );
  }
}
