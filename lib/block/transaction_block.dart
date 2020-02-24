import 'dart:async';

import 'package:expance_tracker/models/transaction.dart';
import 'package:expance_tracker/repository/transaction_repository.dart';

class TransactionBlock {
  // Get repository
  final _transactionRepo = TransactionRepository();

  final _transactionController = StreamController<List<Transaction>>.broadcast();

  get transaction => _transactionController.stream;

  TransactionBlock(){
    getTransactions();
  }

  getTransactions() async{
    _transactionController.sink.add(await _transactionRepo.getAllTransaction());
  }

  addTransaction(Transaction transaction) async {
    await _transactionRepo.insertTransaction(transaction);
    getTransactions();
  }

  updateTransaction(Transaction transaction) async {
    await _transactionRepo.updateTransaction(transaction);
    getTransactions();
  }

  deleteTransactionById(int id) async {
    _transactionRepo.deleteTransactionById(id);
    getTransactions();
  }

  dispose() {
    _transactionController.close();
  }
}