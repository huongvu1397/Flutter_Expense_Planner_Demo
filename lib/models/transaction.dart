class Transaction {
  String id;
  String title;
  double? ammount;
  DateTime? date;

  Transaction(
      {required this.id, required this.title, this.ammount, this.date});
}
