import 'package:expance_tracker/dao/transaction_dao.dart';
import 'package:expance_tracker/models/transaction.dart';

class TransactionRepository {
  final transactionDao = TransactionDao();

  Future getAllTransaction({String query}) => transactionDao.getTransactions();

  Future insertTransaction(Transaction transaction) => transactionDao.createTransaction(transaction);

  Future updateTransaction(Transaction transaction) => transactionDao.updateTransaction(transaction);

  Future deleteTransactionById(int id) => transactionDao.deleteTransaction(id);
}