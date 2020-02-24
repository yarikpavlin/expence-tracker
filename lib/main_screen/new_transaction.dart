import 'dart:ffi';

import 'package:expance_tracker/block/transaction_block.dart';
import 'package:expance_tracker/colors.dart';
import 'package:expance_tracker/models/transaction.dart';
import 'package:flutter/material.dart';

class NewTransactionDialog extends StatefulWidget {
  @override
  _NewTransactionDialogState createState() => _NewTransactionDialogState();
}

class _NewTransactionDialogState extends State<NewTransactionDialog> {
  final TransactionBlock transactionBlock = TransactionBlock();
  String title;
  double amount;
  dialogContent(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Title of transaction"
              ),
              onChanged: (v) => {
                setState((){
                  title = v;
                })
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              keyboardType: TextInputType.number,
              onChanged: (v) => {
                setState((){
                  amount = double.parse(v);
                })
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: primaryColor,
                    child: Text('Cancel'.toUpperCase(),style: TextStyle(
                      color: secondaryColor
                    ),),
                    onPressed: ()=>{Navigator.of(context).pop()},
                  ),
                ),
                SizedBox(width: 10,height: 10,),
                Expanded(
                  child: RaisedButton(
                    color: primaryColor,
                    child: Text('Add'.toUpperCase(), style: TextStyle(
                      color: secondaryColor
                    ),),
                    onPressed: ()=>{
                      transactionBlock.addTransaction(Transaction(title: title,amount: amount))
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}
