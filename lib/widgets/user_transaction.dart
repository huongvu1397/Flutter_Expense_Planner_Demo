import 'package:flutter/material.dart';
import 'package:flutter_expense_planner_demo/widgets/new_transaction.dart';
import 'package:flutter_expense_planner_demo/widgets/transaction_list.dart';

import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', ammount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        ammount: 16.53,
        date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        ammount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(_addNewTransaction), TransactionList(_userTransaction)],
    );
  }
}
