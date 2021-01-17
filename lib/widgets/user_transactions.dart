import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _transactions = [
    Transaction(
        id: DateTime.now().toString(),
        title: 'Chocolate Cake',
        amount: 29.99,
        date: DateTime.now()),
    Transaction(
        id: DateTime.now().toString(),
        title: 'Strawberry Pie',
        amount: 59.99,
        date: DateTime.now())
  ];

  void _addTransaction(String title, double amount) {
    final transaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _transactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_transactions)
      ],
    );
  }
}
