//import 'package:flutter/material.dart';
//import 'package:mini_task2/Core/values.dart';
//import 'package:mini_task2/CreateEvent/createEvent.dart';
//import 'package:mini_task2/EventDetails/eventDetails.dart';
//class bottomNavBar extends StatelessWidget{
//  Function _icn1,_icn2,_icn3,_icn4,_icn5;
//
//  bottomNavBar({@required Function icn1Function,@required Function icn2Function,@required Function icn3Function,@required Function icn4Function,@required Function icn5Function,}){
//    _icn1 = icn1Function;
//    _icn2 = icn2Function;
//    _icn3 = icn3Function;
//    _icn4 = icn4Function;
//    _icn5 = icn5Function;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return SizedBox(
//      height: 30,
//      child:Stack(
//        overflow: Overflow.visible,
//        alignment: new FractionalOffset(.5, 1.0),
//        children: [
//          Positioned(
//            left: 0,
//            bottom:5 ,
//            child: RaisedButton(
//              onPressed: _icn1,
//              elevation: 0,
//              color: Colors.transparent,
//              child: ImageIcon(
//              AssetImage("images/wifi.png"),
//              size: values.bottomNavIconSize,
//              color: values.bottoNavIconColor,
//            ),
//          ),
//          ),
//          Positioned(
//            left: 65,
//            bottom:5 ,
//            child: RaisedButton(
//              onPressed: _icn2,
//              elevation: 0,
//              color: Colors.transparent,
//              child: ImageIcon(
//                AssetImage("images/share.png"),
//                size: values.bottomNavIconSize,
//                color: values.bottoNavIconColor,
//              ),
//            ),
//          ),
//          Positioned(
//            left: 147,
//            right: 150,
//            bottom: 15,
//            child: FloatingActionButton(
//              backgroundColor: Colors.red,
//              elevation: 0,
//              onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context)=>createEvent()));
//              },
//              child: ImageIcon(
//                AssetImage("images/circle_add.png"),
//                size: values.bottomNavIconSize+3,
//
//              ),
//            ),
//          ),
//          Positioned(
//            right: 65,
//            bottom:5 ,
//            child: RaisedButton(
//              onPressed: _icn4,
//              elevation: 0,
//              color: Colors.transparent,
//              child: ImageIcon(
//                AssetImage("images/calc_add.png"),
//                size: values.bottomNavIconSize,
//                color: values.bottoNavIconColor,
//              ),
//            ),
//          ),
//          Positioned(
//            right: 0,
//            bottom:5 ,
//            child: RaisedButton(
//              onPressed: (){},
//              elevation: 0,
//              color: Colors.transparent,
//              child: ImageIcon(
//                AssetImage("images/group_icon.png"),
//                size: values.bottomNavIconSize,
//                color: values.bottoNavIconColor,
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//}
