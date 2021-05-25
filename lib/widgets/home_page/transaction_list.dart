import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:money_manager/models/transaction.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/widgets/home_page/transaction_card.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: always_specify_types
    return ValueListenableBuilder(
      valueListenable: Hive.box<Transaction>('transactions').listenable(),
      builder: (
        BuildContext context,
        Box<Transaction> transactionsBox,
        _,
      ) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (transactionsBox.length == 0) {
                return const Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: Center(
                    child: Text('No transactions'),
                  ),
                );
              }
              final Transaction transaction = transactionsBox.getAt(index)!;

              return TransactionCard(transaction: transaction);
            },
            childCount: transactionsBox.length,
          ),
        );
      },
    );
  }
}
