import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AddInvestmentController extends GetxController {
  final dynamic selected = 'Stocks'.obs;

  final List<String> investmentTypes = <String>[
    'Stocks',
    'Mutual Fund',
    'Savings Account',
    'Fixed Deposit',
    'Bonds',
    'Real Estate',
    'EPF',
  ];

  void setSelected(String value) {
    selected.value = value;
  }
}
