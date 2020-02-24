import 'package:expance_tracker/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(titleText: "INCOME",sum: "+\$343.40",color: appGreen,),
          Card(titleText: "EXPENCE",sum: "-\$103.00",color: appRed,),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget{
  final Color color;
  final String titleText;
  final String sum;


  Card({this.color, this.titleText, this.sum});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(this.titleText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            Text(this.sum, style: TextStyle(
              fontSize: 24,
              color: color
            ),)
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(
                    0.0,
                    3.0
                ),
                blurRadius: 15.0
            )]
        ),
      ),
    );
  }

}
