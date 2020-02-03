import 'package:flutter/material.dart';

class CircularPasswordTextFormField extends StatefulWidget {
  final String hintText;
  final TextStyle hintTextStyle;
  final Color borderColor;
  final Color textFieldColor;
  final Color iconColor;
  final bool obscureText;
  final VoidCallback onIconPressed;
  CircularPasswordTextFormField({
    @required this.hintText,
    @required this.textFieldColor,
    @required this.borderColor,
    @required this.hintTextStyle,
    @required this.onIconPressed,
    @required this.iconColor,
    this.obscureText,
  });
  @override
  _CircularPasswordTextFormFieldState createState() =>
      _CircularPasswordTextFormFieldState();
}

class _CircularPasswordTextFormFieldState
    extends State<CircularPasswordTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
      decoration: BoxDecoration(
        color: widget.textFieldColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
          right: Radius.circular(30),
        ),
        border: Border.all(
          color: widget.borderColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1.8,
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
                hintStyle: widget.hintTextStyle,
              ),
              obscureText: widget.obscureText ?? false,
            ),
          ),
          GestureDetector(
            child: Icon(
              Icons.remove_red_eye,
              color: widget.iconColor,
            ),
            onTap: widget.onIconPressed,
          ),
        ],
      ),
    );
  }
}
