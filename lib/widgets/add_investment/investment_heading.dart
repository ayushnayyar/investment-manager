import 'package:flutter/material.dart';

class InvestmentHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Text(
        'Add an Investment',
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
