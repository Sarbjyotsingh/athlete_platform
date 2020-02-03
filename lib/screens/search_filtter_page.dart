import 'package:flutter/material.dart';

class SearchFilterPage extends StatefulWidget {
  static const String id = 'search_filter_page';
  @override
  _SearchFilterPageState createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Filter',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Muli',
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Apply',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Muli',
              ),
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(13),
            child: Column(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Gender",
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
                          groupValue: 'Gender',
                          value: 'Male',
                          activeColor: Colors.red,
                          focusColor: Colors.red,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Male',
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
                          groupValue: 'Gender',
                          value: 'Female',
                          activeColor: Colors.red,
                          focusColor: Colors.red,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Female',
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Club Signed",
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
                          groupValue: 'club signed',
                          value: 'yes',
                          activeColor: Colors.red,
                          focusColor: Colors.red,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Yes',
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
                          groupValue: 'club signed',
                          value: 'No',
                          activeColor: Colors.red,
                          focusColor: Colors.red,
                          onChanged: (value) {},
                        ),
                        Text(
                          'No',
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Institute Commited",
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
                          groupValue: 'Institue commited',
                          value: 'yes',
                          activeColor: Colors.red,
                          focusColor: Colors.red,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Yes',
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
                          groupValue: 'Institue commited',
                          value: 'No',
                          activeColor: Colors.red,
                          focusColor: Colors.red,
                          onChanged: (value) {},
                        ),
                        Text(
                          'No',
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
          ),
        ),
      ),
    );
  }
}
