class Transaction {
  final int id;
  final String title;
  final double amount;

  Transaction({this.id, this.title, this.amount});

  factory Transaction.fromDatabaseJson(Map<String, dynamic> data) => Transaction(
    id: data['id'],
    title: data['title'],
    amount: data['amount']
  );

  Map<String, dynamic> toDatabaseJson() => {
    "id": this.id,
    "title": this.title,
    "amount": this.amount
  };
}