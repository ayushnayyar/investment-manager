import 'package:hive/hive.dart';
import 'package:money_manager/models/transaction.dart';

part 'transactions.g.dart';

@HiveType(typeId: 3)
class Transactions extends HiveObject {
  @HiveField(0)
  final List<Transaction> _transactionList;

  List<Transaction> get transactions => _transactionList;
  int get numberOfTransactions => _transactionList.length;

  Transactions({required List<Transaction> transactionList}) : _transactionList = transactionList;
}
