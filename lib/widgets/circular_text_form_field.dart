import 'package:flutter/material.dart';

class CircularTextFormField extends StatelessWidget {
  final String hintText;
  final TextStyle hintTextStyle;
  final Color borderColor;
  final Color textFieldColor;
  CircularTextFormField({
    @required this.hintText,
    @required this.textFieldColor,
    @required this.borderColor,
    @required this.hintTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 20, top: 0, bottom: 0, right: 20),
      decoration: BoxDecoration(
        color: textFieldColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
          right: Radius.circular(30),
        ),
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
          hintText: hintText,
          hintStyle: hintTextStyle,
        ),
      ),
    );
  }
}
