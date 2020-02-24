import 'package:expance_tracker/colors.dart';
import 'package:expance_tracker/main_screen/cards.dart';
import 'package:expance_tracker/main_screen/header.dart';
import 'package:expance_tracker/main_screen/history.dart';
import 'package:flutter/material.dart';

import 'main_screen/new_transaction.dart';
import 'main_screen/quick_cards.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: primaryColor)
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () => showDialog(context: context, builder: (BuildContext context) => NewTransactionDialog()),
                    ),
                  ],
                ),
              ),
            ),
              Stack(
                children: <Widget>[
                  ClipPath(
                  clipper: CustomClipShape(),
                    child: Container(
                      height: 450.0,
                      decoration: BoxDecoration(color: primaryColor),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Header(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Cards(),
                      ),
                      History(),
                      QuickCards()
                    ],
                  ),
                ],
              ),
          ],
        ),
      )
    );
  }

}

class CustomClipShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 550.0-200);
    path.quadraticBezierTo(size.width , 240, size.width, 250);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

}