import 'package:flutter/material.dart';

class DiscussionDetail extends StatefulWidget {
  static const String id = 'discussion_detail';
  @override
  _DiscussionDetailState createState() => _DiscussionDetailState();
}

class _DiscussionDetailState extends State<DiscussionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
            size: 30,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
