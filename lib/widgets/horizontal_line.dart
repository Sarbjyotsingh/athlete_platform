import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade300,
      margin: const EdgeInsets.only(
        top: 20,
      ),
    );
  }
}
