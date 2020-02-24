import 'package:expance_tracker/main_screen/history_list.dart';
import 'package:expance_tracker/models/transaction.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(24.0),
        width: double.infinity,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('History',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),),
            HistoryList()
          ],
        ),
      ),
    );
  }
}
