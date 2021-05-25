import 'package:flutter/material.dart';
import 'package:money_manager/widgets/home_page/duration_chip.dart';

class ChipList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 50.0,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: const <DurationChip>[
            DurationChip(chipText: 'All'),
            DurationChip(chipText: 'Today'),
            DurationChip(chipText: 'Last week'),
            DurationChip(chipText: 'This month'),
          ],
        ),
      ),
    );
  }
}
