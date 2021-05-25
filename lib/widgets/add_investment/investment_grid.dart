import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:money_manager/json/investment_type.dart';

class InvestmentGrid extends StatefulWidget {
  @override
  _InvestmentGridState createState() => _InvestmentGridState();
}

class _InvestmentGridState extends State<InvestmentGrid> {
  List<InvestmentType> investmentTypes = <InvestmentType>[];

  Future<void> parseInvestmentTypes() async {
    final String data = await rootBundle.loadString('assets/json/investment_types.json');
    final dynamic parsed = json.decode(data).cast<Map<String, dynamic>>();

    setState(() {
      investmentTypes = parsed
          .map<InvestmentType>((Map<String, dynamic> json) => InvestmentType.fromJson(json))
          .toList() as List<InvestmentType>;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      parseInvestmentTypes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                final String routeSpecification = investmentTypes[index].title.toLowerCase().split(' ').join('-');
                Get.toNamed('/add-investment/$routeSpecification');
              },
              child: Text(
                investmentTypes[index].title,
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
        childCount: investmentTypes.length,
      ),
    );
  }
}
