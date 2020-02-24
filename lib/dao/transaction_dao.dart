
import 'package:expance_tracker/database/database.dart';
import 'package:expance_tracker/models/transaction.dart';

class TransactionDao {
  final dbProvider = DatabaseProvider.dbProvider;

  // Create new transaction
  Future<int> createTransaction(Transaction transaction) async {
    final db = await dbProvider.database;
    var result = db.insert(expanceTrackerTABLE, transaction.toDatabaseJson());
    return result;
  }

  // Get all transactions
  Future<List<Transaction>> getTransactions({List<String> columns}) async {
    final db = await dbProvider.database;
    List<Map<String, dynamic>> result =
    await db.query(expanceTrackerTABLE, columns: columns);

    List<Transaction> transaction = result.isNotEmpty
        ? result.map((item) => Transaction.fromDatabaseJson(item)).toList()
        : [];
    return transaction;
  }

  // Update Transaction
  Future<int> updateTransaction(Transaction transaction) async {
    final db = await dbProvider.database;

    var result = await db.update(expanceTrackerTABLE, transaction.toDatabaseJson(),
    where: "id = ?", whereArgs: [transaction.id]);

    return result;
  }

  // Delete Transaction
  Future<int> deleteTransaction(int id) async {
    final db = await dbProvider.database;
    var result = await db.delete(expanceTrackerTABLE,
    where: "id = ?",whereArgs: [id]);
    return result;
  }

}