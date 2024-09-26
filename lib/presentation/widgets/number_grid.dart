import 'package:flutter/material.dart';
import '../../domain/rule_highlight_service.dart';
import 'number_tile.dart';

class NumberGrid extends StatelessWidget {
  final List<int> numbers;
  final String selectedRule;

  NumberGrid({required this.numbers, required this.selectedRule});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: numbers.length,
      itemBuilder: (context, index) {
        final number = numbers[index];
        return NumberTile(
          number: number,
          highlightColor: RuleHighlightService.getHighlightColor(number, selectedRule),
        );
      },
    );
  }
}
