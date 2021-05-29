import 'package:flutter/material.dart';

class InvestmentTypeHeading extends StatelessWidget {
  const InvestmentTypeHeading({required this.investmentType});

  final String investmentType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        bottom: 24.0,
      ),
      child: Text(
        investmentType,
        style: const TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
