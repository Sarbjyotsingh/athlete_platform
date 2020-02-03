import 'package:athlete_platform/utilities/constant.dart';
import 'package:athlete_platform/widgets/circular_button_with_text.dart';
import 'package:athlete_platform/widgets/circular_text_form_field.dart';
import 'package:athlete_platform/widgets/horizontal_line.dart';
import 'package:athlete_platform/widgets/rectangular_text_form_field.dart';
import 'package:flutter/material.dart';

class EditGroup extends StatefulWidget {
  static const String id = 'edit_group';
  @override
  _EditGroupState createState() => _EditGroupState();
}

class _EditGroupState extends State<EditGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    'Edit Group',
                    style: kCreateAndEditPageHeadingStyle,
                  ),
                ),
              ),
              HorizontalLine(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.cloud_upload,
                      color: Colors.grey,
                      size: 60,
                    ),
                    Text(
                      'Drop a photo here',
                      style: kCreatePageTextStyle,
                    ),
                  ],
                ),
              ),
              HorizontalLine(),
              Container(
                padding:
                    EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 40),
                child: Column(
                  children: <Widget>[
                    Align(
                      child: Text(
                        'Group Name',
                        style: kTextFieldNameStyle,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CircularTextFormField(
                      hintText: 'Ex. Practice of volleyball',
                      hintTextStyle: kTextFieldHintTextDecoration,
                      borderColor: Colors.grey,
                      textFieldColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      child: Text(
                        'Group Type',
                        style: kTextFieldNameStyle,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CircularTextFormField(
                      hintText: 'Private (Only by invite)',
                      hintTextStyle: kTextFieldHintTextDecoration,
                      borderColor: Colors.grey.shade300,
                      textFieldColor: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      child: Text(
                        'Description',
                        style: kTextFieldNameStyle,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    RectangularTextFormField(
                      hintText: 'Discription',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircularButtonWithText(
                    text: 'Cancel',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    borderColor: Colors.grey,
                    buttonColor: Colors.white,
                    textColor: Colors.grey,
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Muli',
                    ),
                  ),
                  CircularButtonWithText(
                    text: 'Save',
                    onPressed: () {},
                    borderColor: Colors.black,
                    buttonColor: Colors.black,
                    textColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Muli',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
