import 'package:expance_tracker/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('CURRENT BALANCE',
          style: TextStyle(
            fontFamily: 'PT Mono',
            fontSize: 24,
            color: secondaryColor,
              fontWeight: FontWeight.bold
          ),),
          Text('\$560.00',style: TextStyle(
            fontFamily: 'PT Mono',
            fontSize: 24,
              color: secondaryColor,
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
