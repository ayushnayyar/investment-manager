import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:money_manager/controllers/add_investment_controller.dart';

class InvestmentDropdown extends StatefulWidget {
  @override
  _InvestmentDropdownState createState() => _InvestmentDropdownState();
}

class _InvestmentDropdownState extends State<InvestmentDropdown> {
  final AddInvestmentController addInvestmentController = AddInvestmentController();
  String selectedCategory = '';

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text('Investment Type '),
          Obx(
            () => DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: addInvestmentController.selected.value as String,
                items: addInvestmentController.investmentTypes.map((String selectedInvestment) {
                  selectedCategory = selectedInvestment;

                  return DropdownMenuItem<String>(
                    value: selectedInvestment,
                    child: Text(selectedInvestment),
                  );
                }).toList(),
                onChanged: (String? value) {
                  if (value != null) {
                    addInvestmentController.setSelected(value);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
