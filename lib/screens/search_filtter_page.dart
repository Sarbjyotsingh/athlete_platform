import 'package:athlete_platform/screens/two_radio_button.dart';
import 'package:athlete_platform/widgets/rectangular_drop_down_button.dart';
import 'package:athlete_platform/widgets/rectangular_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchFilterPage extends StatefulWidget {
  static const String id = 'search_filter_page';
  @override
  _SearchFilterPageState createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  String _genderGroupValue = '';
  String _clubSignedGroupValue = '';
  String _instituteGroupValue = '';
  String _graduationYear = 'Graduation Year';
  String _clubLevel = 'Club Level';
  String _position = 'Position';
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
                TwoRadioButton(
                  label: 'Gender',
                  activeColor: Colors.red,
                  labelValue1: 'Male',
                  groupLabel: _genderGroupValue,
                  onChanged1: (value) {
                    setState(() {
                      _genderGroupValue = value;
                    });
                  },
                  labelValue2: 'Female',
                  onChanged2: (value) {
                    setState(() {
                      _genderGroupValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TwoRadioButton(
                  label: 'Club Signed',
                  activeColor: Colors.red,
                  labelValue1: 'Yes',
                  groupLabel: _clubSignedGroupValue,
                  onChanged1: (value) {
                    setState(() {
                      _clubSignedGroupValue = value;
                    });
                  },
                  labelValue2: 'No',
                  onChanged2: (value) {
                    setState(() {
                      _clubSignedGroupValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TwoRadioButton(
                  label: 'Institute Commited',
                  activeColor: Colors.red,
                  labelValue1: 'Yes',
                  groupLabel: _instituteGroupValue,
                  onChanged1: (value) {
                    setState(() {
                      _instituteGroupValue = value;
                    });
                  },
                  labelValue2: 'No',
                  onChanged2: (value) {
                    setState(() {
                      _instituteGroupValue = value;
                    });
                  },
                ),
                RectangularDropDownButton(
                  hintText: _clubLevel,
                  dropDownMenuItem: [
                    DropdownMenuItem(
                      child: Text('U13'),
                      value: 'U13',
                    ),
                    DropdownMenuItem(
                      child: Text('U14'),
                      value: 'U14',
                    ),
                    DropdownMenuItem(
                      child: Text('U15'),
                      value: 'U15',
                    ),
                    DropdownMenuItem(
                      child: Text('U16'),
                      value: 'U16',
                    ),
                    DropdownMenuItem(
                      child: Text('U17'),
                      value: 'U17',
                    ),
                    DropdownMenuItem(
                      child: Text('U18'),
                      value: 'U18',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _clubLevel = value.toString();
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                RectangularDropDownButton(
                  hintText: _graduationYear,
                  dropDownMenuItem: [
                    DropdownMenuItem(
                      child: Text('2025'),
                      value: '2025',
                    ),
                    DropdownMenuItem(
                      child: Text('2024'),
                      value: '2024',
                    ),
                    DropdownMenuItem(
                      child: Text('2023'),
                      value: '2023',
                    ),
                    DropdownMenuItem(
                      child: Text('2022'),
                      value: '2022',
                    ),
                    DropdownMenuItem(
                      child: Text('2021'),
                      value: '2021',
                    ),
                    DropdownMenuItem(
                      child: Text('2020'),
                      value: '2020',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _graduationYear = value.toString();
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                RectangularDropDownButton(
                  hintText: _position,
                  dropDownMenuItem: [
                    DropdownMenuItem(
                      child: Text('Leftside Hitter'),
                      value: 'Leftside Hitter',
                    ),
                    DropdownMenuItem(
                      child: Text('Opposite Hitter'),
                      value: 'Opposite Hitter',
                    ),
                    DropdownMenuItem(
                      child: Text('Setter'),
                      value: 'Setter',
                    ),
                    DropdownMenuItem(
                      child: Text('Libero'),
                      value: 'Libero',
                    ),
                    DropdownMenuItem(
                      child: Text('Middle Blocker'),
                      value: 'Middle Blocker',
                    ),
                    DropdownMenuItem(
                      child: Text('Defensive Specialist'),
                      value: 'Defensive Specialist',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _position = value.toString();
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RectangularTextFormField(
                  label: 'Club Name',
                  hintText: 'Ex. Club Name',
                ),
                SizedBox(
                  height: 15,
                ),
                RectangularTextFormField(
                  label: 'Institution\'s Name',
                  hintText: 'Ex. Institution\'s Name',
                ),
                SizedBox(
                  height: 15,
                ),
                RectangularTextFormField(
                  label: 'Club Jesery',
                  hintText: 'Ex. Club Jesery',
                ),
                SizedBox(
                  height: 15,
                ),
                RectangularTextFormField(
                  label: 'School Jesery',
                  hintText: 'Ex. School Jesery',
                ),
                SizedBox(
                  height: 15,
                ),
                RectangularTextFormField(
                  label: 'Province',
                  hintText: 'Ex. Province',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
