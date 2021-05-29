import 'package:flutter/material.dart';
import 'package:money_manager/widgets/add_investment/investment_type_heading.dart';
import 'package:money_manager/widgets/add_investment/string_input.dart';

class Stocks extends StatefulWidget {
  @override
  _StocksState createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String symbol = '';
  String name = '';

  void updateSymbol(String symbol) {
    setState(() {
      this.symbol = symbol;
    });
  }

  void updateName(String name) {
    setState(() {
      this.name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              const InvestmentTypeHeading(investmentType: 'Add Stocks'),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    StringInput(
                      onChange: (String val) => updateSymbol(val),
                      errorText: 'Please enter stock symbol',
                      labelText: 'Symbol',
                      hint: 'AAPL, TCS, ...',
                      allCaps: true,
                    ),
                    StringInput(
                      onChange: (String val) => updateName(val),
                      errorText: 'Please enter stock name',
                      labelText: 'Name',
                      hint: 'Apple, Tata Consultancy Services, ...',
                      allCaps: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
