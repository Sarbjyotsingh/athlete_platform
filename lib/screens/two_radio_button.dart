import 'package:flutter/material.dart';

class TwoRadioButton extends StatefulWidget {
  final String label;
  final String labelValue1;
  final String labelValue2;
  final String groupLabel;
  final Color activeColor;
  final dynamic onChanged1;
  final dynamic onChanged2;
  TwoRadioButton({
    @required this.label,
    @required this.activeColor,
    @required this.groupLabel,
    @required this.labelValue1,
    @required this.labelValue2,
    @required this.onChanged1,
    @required this.onChanged2,
  });
  @override
  _TwoRadioButtonState createState() => _TwoRadioButtonState();
}

class _TwoRadioButtonState extends State<TwoRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16.0,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: widget.groupLabel,
                    value: widget.labelValue1,
                    activeColor: widget.activeColor,
                    onChanged: widget.onChanged1,
                  ),
                  Text(
                    widget.labelValue1,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16.0,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: widget.groupLabel,
                    value: widget.labelValue2,
                    activeColor: widget.activeColor,
                    onChanged: widget.onChanged2,
                  ),
                  Text(
                    widget.labelValue2,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16.0,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
