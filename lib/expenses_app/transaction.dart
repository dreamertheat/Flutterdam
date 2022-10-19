class Transaction {
  final String id;
  final String title;
  final double amount;
  DateTime date = DateTime.now();
  Function delete = () {};

  Transaction({
    this.id = "0",
    this.title = "",
    this.amount = 0.0,
  });

  Transaction.customDate(
      {this.id = "0",
      this.title = "",
      this.amount = 0.0,
      required this.date,
      required this.delete});
}
