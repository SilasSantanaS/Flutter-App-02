import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue)),
                child: Text(
                    '\$ ${transactions.elementAt(index).amount.toStringAsFixed(2)}',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions.elementAt(index).title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat.yMMMEd()
                        .format(transactions.elementAt(index).date),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}
