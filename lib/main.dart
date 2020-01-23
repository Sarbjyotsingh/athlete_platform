import 'package:athlete_platform/Screens/menu_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: MenuBar.id,
      routes: {
        MenuBar.id: (context) => MenuBar(),
      },
    );
  }
}
