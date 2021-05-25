import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hive/hive.dart';
import 'package:money_manager/controllers/add_investment_controller.dart';
import 'package:money_manager/models/category.dart';
import 'package:money_manager/models/investments.dart';
import 'package:money_manager/models/transaction.dart';
import 'package:money_manager/widgets/add_investment/investment_dropdown.dart';
import 'package:money_manager/widgets/add_investment/investment_grid.dart';
import 'package:money_manager/widgets/add_investment/investment_heading.dart';

class AddInvestment extends StatefulWidget {
  @override
  _AddInvestmentState createState() => _AddInvestmentState();
}

class _AddInvestmentState extends State<AddInvestment> {
  // final AddTransactionController addTransactionController = AddTransactionController();
  // final TextEditingController _amountController = TextEditingController();
  // String selectedCategory = '';

  @override
  void dispose() {
    // _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: statusBarHeight + 20.0,
          left: 15.0,
          right: 15.0,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          slivers: <Widget>[
            InvestmentHeading(),
            InvestmentDropdown(),
            InvestmentGrid(),
            // SliverToBoxAdapter(
            //   child: Row(
            //     children: <Widget>[
            //       Obx(
            //         () => DropdownButtonHideUnderline(
            //           child: DropdownButton<String>(
            //             value: addTransactionController.selected.value as String,
            //             items: addTransactionController.investmentTypes.map((String selectedInvestment) {
            //               selectedCategory = selectedInvestment;

            //               return DropdownMenuItem<String>(
            //                 value: selectedInvestment,
            //                 child: Text(selectedInvestment),
            //               );
            //             }).toList(),
            //             onChanged: (String? value) {
            //               if (value != null) {
            //                 addTransactionController.setSelected(value);
            //               }
            //             },
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: <Widget>[
            //       Expanded(
            //         child: TextField(
            //           controller: _amountController,
            //           decoration: const InputDecoration(
            //             hintText: 'Enter an amount',
            //           ),
            //           keyboardType: TextInputType.number,
            //         ),
            //       ),
            //       ElevatedButton(
            //         onPressed: () {
            //           final Category category = Category(name: addTransactionController.selected.value as String);
            //           final Transaction transaction = Transaction(
            //             amount: double.parse(_amountController.text),
            //             category: category,
            //             title: 'Test',
            //           );

            //           final Investments? investments = Hive.box<Investments>('investments').get('investments');

            //           if (investments != null) {
            //             investments.addStocksBalance(transaction.amount);
            //             Hive.box<Investments>('investments').put('investments', investments);
            //           }

            //           Hive.box<Transaction>('transactions').add(transaction);
            //         },
            //         child: const Text('Add'),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
