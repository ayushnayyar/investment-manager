import 'package:flutter/material.dart';
import 'package:money_manager/models/transaction.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Text(
                  transaction.title,
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                child: Text(
                  transaction.amount.toString(),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  transaction.category.name,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
