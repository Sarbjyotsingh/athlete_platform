import 'package:flutter/material.dart';

class RectangularTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  RectangularTextFormField({
    @required this.hintText,
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16.0,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.only(left: 20, top: 0, bottom: 0, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(5),
                right: Radius.circular(5),
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontFamily: 'Muli',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
