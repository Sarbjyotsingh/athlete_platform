import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'menu_bar.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/';

  @override
  State<StatefulWidget> createState() {
    return new _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectToOtherPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "menu_bar.dart");
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void redirectToOtherPage() {
    Future.delayed(const Duration(milliseconds: 4000), () {
      Navigator.pushReplacementNamed(context, MenuBar.id);
    });
  }
}
