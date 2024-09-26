import '../data/number_rules.dart';
import 'package:flutter/material.dart';

class RuleHighlightService {
  static Color getHighlightColor(int number, String selectedRule) {
    switch (selectedRule) {
      case 'Odd Numbers':
        return number.isOdd ? Colors.orange : Colors.grey[400]!;
      case 'Even Numbers':
        return number.isEven ? Colors.blueAccent : Colors.grey[400]!;
      case 'Prime Numbers':
        return NumberRules.isPrime(number) ? Colors.green : Colors.grey[400]!;
      case 'Fibonacci Sequence':
        return NumberRules.isFibonacci(number) ? Colors.purple : Colors.grey[400]!;
      default:
        return Colors.grey[400]!;
    }
  }
}
