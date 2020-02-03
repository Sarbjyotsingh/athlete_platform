import 'package:athlete_platform/utilities/constant.dart';
import 'package:flutter/material.dart';

class RectangularTextFormField extends StatelessWidget {
  final String hintText;

  RectangularTextFormField({@required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, top: 2, bottom: 2, right: 20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
          hintText: hintText,
          hintStyle: kTextFieldHintTextDecoration,
        ),
      ),
    );
  }
}
