import 'package:hive/hive.dart';
import 'package:money_manager/models/category.dart';

part 'transaction.g.dart';

@HiveType(typeId: 2)
class Transaction extends HiveObject {
  @HiveField(0)
  final double amount;
  @HiveField(1)
  final DateTime time = DateTime.now();
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final Category category;

  Transaction({
    required this.amount,
    required this.title,
    required this.category,
    this.description = '',
  });
}
