import 'package:expance_tracker/block/transaction_block.dart';
import 'package:expance_tracker/colors.dart';
import 'package:expance_tracker/models/transaction.dart';
import 'package:flutter/material.dart';

class HistoryList extends StatelessWidget {
  final TransactionBlock transactionBlock = TransactionBlock();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: transactionBlock.transaction,
      builder: (BuildContext ctx, AsyncSnapshot<List<Transaction>> snapshot) {
        return createHistoryList(snapshot);
      },
    );
  }


  createHistoryList(AsyncSnapshot<List<Transaction>> snapshot) {
    return snapshot.data.length != 0
        ? ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            print('DATA: ${snapshot.data[index]}');
            Transaction transaction = snapshot.data[index];
            return builder(transaction);
          }
    )
        : Text('Transactions are empty');
  }

  Widget builder(Transaction transaction) {
    Color color = transaction.amount > 0 ? appGreen : appRed;
    String amountValue = transaction.amount > 0 ? "+\$" : "-\$";
    amountValue+= transaction.amount.abs().toString();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: color,
              // Add 200px on top and bottom
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              child: Container(
                  margin: EdgeInsets.all(8)
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(transaction.title, style: TextStyle(
                      fontSize: 16.0
                  ),),
                  Text(amountValue, style: TextStyle(
                      fontSize: 16.0
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
