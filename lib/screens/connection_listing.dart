import 'package:athlete_platform/widgets/connection_card.dart';
import 'package:flutter/material.dart';

class ConnectionListing extends StatefulWidget {
  static const String id = 'connection_listing';
  @override
  _ConnectionListingState createState() => _ConnectionListingState();
}

class _ConnectionListingState extends State<ConnectionListing> {
  List<Color> _buttonColor = List(7);
  List<Color> _buttonBorderColor = List(7);
  List<Color> _buttonTextColor = List(7);
  void _settingInitialColor() {
    for (int i = 0; i < 7; i++) {
      _buttonColor[i] = Colors.red;
      _buttonBorderColor[i] = Colors.red;
      _buttonTextColor[i] = Colors.white;
    }
  }

  Future<bool> _bottomSheet() async {
    bool _isTrue = false;
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(10),
          height: 200,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Are you sure to remove the connection ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  _isTrue = true;
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    title: Text(
                      'Yes',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  _isTrue = false;
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    title: Text(
                      'No',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    return _isTrue;
  }

  @override
  void initState() {
    _settingInitialColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Connections',
          style: TextStyle(
            fontFamily: 'Muli',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add_circle_outline,
          size: 35,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFf5f5f5),
        selectedItemColor: Colors.grey[700],
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.rss_feed,
              size: 30,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.device_hub,
              size: 30,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event_available,
              size: 30,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_work,
              size: 30,
            ),
            title: SizedBox(),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 13, left: 13),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ConnectionCard(
                      connectionID: 1,
                      userName: 'Nikos Markopoulos',
                      userDescription: 'Athlete',
                      userCity: 'Canada',
                      image: AssetImage('images/person3.jpg'),
                      buttonColor: _buttonColor[0],
                      buttonBorderColor: _buttonBorderColor[0],
                      buttonTextColor: _buttonTextColor[0],
                      onPressedButton: () async {
                        bool _change = await _bottomSheet();
                        if (_change) {
                          setState(() {
                            _buttonTextColor[0] = Colors.red;
                            _buttonColor[0] = Colors.white;
                            _buttonBorderColor[0] = Colors.red;
                          });
                        }
                      },
                    ),
                    ConnectionCard(
                      connectionID: 2,
                      userName: 'Nikos Markopoulos',
                      userDescription: 'Athlete',
                      userCity: 'Canada',
                      image: AssetImage('images/person3.jpg'),
                      buttonColor: _buttonColor[1],
                      buttonBorderColor: _buttonBorderColor[1],
                      buttonTextColor: _buttonTextColor[1],
                      onPressedButton: () async {
                        bool _change = await _bottomSheet();
                        if (_change) {
                          setState(() {
                            _buttonTextColor[1] = Colors.red;
                            _buttonColor[1] = Colors.white;
                            _buttonBorderColor[1] = Colors.red;
                          });
                        }
                      },
                    ),
                    ConnectionCard(
                      connectionID: 3,
                      userName: 'Nikos Markopoulos',
                      userDescription: 'Athlete',
                      userCity: 'Canada',
                      image: AssetImage('images/person3.jpg'),
                      buttonColor: _buttonColor[2],
                      buttonBorderColor: _buttonBorderColor[2],
                      buttonTextColor: _buttonTextColor[2],
                      onPressedButton: () async {
                        bool _change = await _bottomSheet();
                        if (_change) {
                          setState(() {
                            _buttonTextColor[2] = Colors.red;
                            _buttonColor[2] = Colors.white;
                            _buttonBorderColor[2] = Colors.red;
                          });
                        }
                      },
                    ),
                    ConnectionCard(
                      connectionID: 4,
                      userName: 'Nikos Markopoulos',
                      userDescription: 'Athlete',
                      userCity: 'Canada',
                      image: AssetImage('images/person3.jpg'),
                      buttonColor: _buttonColor[3],
                      buttonBorderColor: _buttonBorderColor[3],
                      buttonTextColor: _buttonTextColor[3],
                      onPressedButton: () async {
                        bool _change = await _bottomSheet();
                        if (_change) {
                          setState(() {
                            _buttonTextColor[3] = Colors.red;
                            _buttonColor[3] = Colors.white;
                            _buttonBorderColor[3] = Colors.red;
                          });
                        }
                      },
                    ),
                    ConnectionCard(
                      connectionID: 5,
                      userName: 'Nikos Markopoulos',
                      userDescription: 'Athlete',
                      userCity: 'Canada',
                      image: AssetImage('images/person3.jpg'),
                      buttonColor: _buttonColor[4],
                      buttonBorderColor: _buttonBorderColor[4],
                      buttonTextColor: _buttonTextColor[4],
                      onPressedButton: () async {
                        bool _change = await _bottomSheet();
                        if (_change) {
                          setState(() {
                            _buttonTextColor[4] = Colors.red;
                            _buttonColor[4] = Colors.white;
                            _buttonBorderColor[4] = Colors.red;
                          });
                        }
                      },
                    ),
                    ConnectionCard(
                      connectionID: 6,
                      userName: 'Nikos Markopoulos',
                      userDescription: 'Athlete',
                      userCity: 'Canada',
                      image: AssetImage('images/person3.jpg'),
                      buttonColor: _buttonColor[5],
                      buttonBorderColor: _buttonBorderColor[5],
                      buttonTextColor: _buttonTextColor[5],
                      onPressedButton: () async {
                        bool _change = await _bottomSheet();
                        if (_change) {
                          setState(() {
                            _buttonTextColor[5] = Colors.red;
                            _buttonColor[5] = Colors.white;
                            _buttonBorderColor[5] = Colors.red;
                          });
                        }
                      },
                    ),
                    ConnectionCard(
                      connectionID: 7,
                      userName: 'Nikos Markopoulos',
                      userDescription: 'Athlete',
                      userCity: 'Canada',
                      image: AssetImage('images/person3.jpg'),
                      buttonColor: _buttonColor[6],
                      buttonBorderColor: _buttonBorderColor[6],
                      buttonTextColor: _buttonTextColor[6],
                      onPressedButton: () async {
                        bool _change = await _bottomSheet();
                        if (_change) {
                          setState(() {
                            _buttonTextColor[6] = Colors.red;
                            _buttonColor[6] = Colors.white;
                            _buttonBorderColor[6] = Colors.red;
                          });
                        }
                      },
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
