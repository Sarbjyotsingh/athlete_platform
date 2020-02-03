import 'package:flutter/material.dart';

class ImageWithCircularBorder extends StatelessWidget {
  final ImageProvider image;
  final double imageRadius;
  final Color borderColor;
  ImageWithCircularBorder({
    @required this.imageRadius,
    @required this.borderColor,
    @required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 1.5,
        ),
      ),
      child: CircleAvatar(
        radius: imageRadius,
        backgroundImage: image,
      ),
    );
  }
}
