import 'package:athlete_platform/widgets/circular_button_with_text.dart';
import 'package:athlete_platform/widgets/image_with_circular_border.dart';
import 'package:flutter/material.dart';

class ConnectionCard extends StatefulWidget {
  final ImageProvider image;
  final VoidCallback onPressedButton;
  final String userName;
  final String userDescription;
  final String userCity;
  final Color buttonColor;
  final Color buttonBorderColor;
  final Color buttonTextColor;

  final String buttonText;
  ConnectionCard({
    @required this.image,
    @required this.onPressedButton,
    @required this.userName,
    @required this.userDescription,
    @required this.userCity,
    @required this.buttonBorderColor,
    @required this.buttonColor,
    @required this.buttonTextColor,
    @required this.buttonText,
  });
  @override
  _ConnectionCardState createState() => _ConnectionCardState();
}

class _ConnectionCardState extends State<ConnectionCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            ImageWithCircularBorder(
              image: widget.image,
              imageRadius: 55,
              borderColor: Colors.grey.shade300,
            ),
            Text(
              widget.userName,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              widget.userDescription,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Muli',
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                Text(
                  widget.userCity,
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Muli',
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            CircularButtonWithText(
              text: widget.buttonText,
              textStyle: TextStyle(
                fontSize: 15,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
                color: widget.buttonTextColor,
              ),
              textColor: widget.buttonTextColor,
              borderColor: widget.buttonBorderColor,
              buttonColor: widget.buttonColor,
              onPressed: widget.onPressedButton,
            ),
          ],
        ),
      ),
    );
  }
}
