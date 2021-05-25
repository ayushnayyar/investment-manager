import 'package:flutter/material.dart';

class DurationChip extends StatelessWidget {
  final String chipText;

  const DurationChip({Key? key, required this.chipText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Chip(
        label: Text(chipText),
      ),
    );
  }
}
