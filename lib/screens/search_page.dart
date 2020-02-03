import 'package:athlete_platform/screens/search_filtter_page.dart';
import 'package:athlete_platform/widgets/connection_card.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String id = 'search_page';
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Color> _buttonColor = List(7);
  List<Color> _buttonBorderColor = List(7);
  List<Color> _buttonTextColor = List(7);
  List<String> _buttonText = List(7);

  void _settingInitialColor() {
    for (int i = 0; i < 7; i++) {
      _buttonColor[i] = Colors.red;
      _buttonBorderColor[i] = Colors.red;
      _buttonTextColor[i] = Colors.white;
      _buttonText[i] = 'United';
    }
  }

  void _changeButton(int index) async {
    if (_buttonColor[index] == Colors.white) {
      setState(() {
        _buttonTextColor[index] = Colors.white;
        _buttonColor[index] = Colors.red;
        _buttonBorderColor[index] = Colors.red;
        _buttonText[index] = 'United';
      });
    } else {
      bool _change = await _bottomSheet();
      if (_change) {
        setState(() {
          _buttonTextColor[index] = Colors.red;
          _buttonColor[index] = Colors.white;
          _buttonBorderColor[index] = Colors.red;
          _buttonText[index] = 'Unite';
        });
      }
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.search,
            size: 32,
          ),
          backgroundColor: Colors.red,
          onPressed: () {},
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.sort,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, SearchFilterPage.id);
              },
            )
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.grey.shade700,
            labelStyle: TextStyle(
              fontFamily: 'Muli',
              fontSize: 16,
            ),
            indicatorColor: Color(0xFFf01b01),
            tabs: [
              Tab(
                text: 'For Athletes',
              ),
              Tab(
                text: 'For Others',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 13, left: 13),
            child: TabBarView(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ConnectionCard(
                            userName: 'Amanda',
                            userDescription: 'Athlete',
                            userCity: 'Canada',
                            image: AssetImage('images/person3.jpg'),
                            buttonText: _buttonText[0],
                            buttonColor: _buttonColor[0],
                            buttonBorderColor: _buttonBorderColor[0],
                            buttonTextColor: _buttonTextColor[0],
                            onPressedButton: () {
                              _changeButton(0);
                            },
                          ),
                          ConnectionCard(
                            userName: 'Amanda',
                            userDescription: 'Athlete',
                            userCity: 'Canada',
                            image: AssetImage('images/person3.jpg'),
                            buttonText: _buttonText[1],
                            buttonColor: _buttonColor[1],
                            buttonBorderColor: _buttonBorderColor[1],
                            buttonTextColor: _buttonTextColor[1],
                            onPressedButton: () {
                              _changeButton(1);
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ConnectionCard(
                            userName: 'Amanda',
                            userDescription: 'Athlete',
                            userCity: 'Canada',
                            image: AssetImage('images/person3.jpg'),
                            buttonText: _buttonText[2],
                            buttonColor: _buttonColor[2],
                            buttonBorderColor: _buttonBorderColor[2],
                            buttonTextColor: _buttonTextColor[2],
                            onPressedButton: () {
                              _changeButton(2);
                            },
                          ),
                          ConnectionCard(
                            userName: 'Amanda',
                            userDescription: 'Athlete',
                            userCity: 'Canada',
                            image: AssetImage('images/person3.jpg'),
                            buttonText: _buttonText[3],
                            buttonColor: _buttonColor[3],
                            buttonBorderColor: _buttonBorderColor[3],
                            buttonTextColor: _buttonTextColor[3],
                            onPressedButton: () {
                              _changeButton(3);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ConnectionCard(
                            userName: 'Amanda',
                            userDescription: 'Athlete',
                            userCity: 'Canada',
                            image: AssetImage('images/person3.jpg'),
                            buttonText: _buttonText[4],
                            buttonColor: _buttonColor[4],
                            buttonBorderColor: _buttonBorderColor[4],
                            buttonTextColor: _buttonTextColor[4],
                            onPressedButton: () {
                              _changeButton(4);
                            },
                          ),
                          ConnectionCard(
                            userName: 'Amanda',
                            userDescription: 'Athlete',
                            userCity: 'Canada',
                            image: AssetImage('images/person3.jpg'),
                            buttonText: _buttonText[5],
                            buttonColor: _buttonColor[5],
                            buttonBorderColor: _buttonBorderColor[5],
                            buttonTextColor: _buttonTextColor[5],
                            onPressedButton: () {
                              _changeButton(5);
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ConnectionCard(
                            userName: 'Amanda',
                            userDescription: 'Athlete',
                            userCity: 'Canada',
                            image: AssetImage('images/person3.jpg'),
                            buttonText: _buttonText[6],
                            buttonColor: _buttonColor[6],
                            buttonBorderColor: _buttonBorderColor[6],
                            buttonTextColor: _buttonTextColor[6],
                            onPressedButton: () {
                              _changeButton(6);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
